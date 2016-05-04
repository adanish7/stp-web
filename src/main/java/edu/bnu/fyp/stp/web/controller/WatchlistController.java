package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.FindStudentBL;
import edu.bnu.fyp.stp.bl.FindTutorBL;
import edu.bnu.fyp.stp.bl.WatchListBL;
import edu.bnu.fyp.stp.domain.model.User;
import edu.bnu.fyp.stp.domain.model.Watchlist;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 4/12/16.
 */

@Controller
@RequestMapping (value = "watchlist")
public class WatchlistController {

    @Autowired
    private WatchListBL watchListBL;

    @Autowired
    private FindTutorBL findTutorBL;

    @Autowired
    private FindStudentBL findStudentBL;
    private String tutorId;
    private String studentId;
    private BindingResult bindingResult;
    private Model model;
    private HttpSession session;


    /*@RequestMapping (value = "/watchlist")
    private String displayWatchList(Model model)
    {

        try {
            //List<User> tutorWatchlist = watchListBL.getStudentWatchlist(userId);

            //model.addAttribute("tutorWatchlist" , tutorWatchlist);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "StudentWatchlist";
    }*/


    @RequestMapping (value = "/{userId}" , method = RequestMethod.GET)
    private String showWatchList(@PathVariable String userId , Model model)
    {

        try {
            List<Watchlist> studentWatchlist = watchListBL.getStudentWatchlist(userId);

            model.addAttribute("studentWatchlist" , studentWatchlist);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "StudentWatchlist";
    }

    @RequestMapping(value = "/add" , method = RequestMethod.GET)
    public String saveWatchlist(@RequestParam(required = false) String tutorId, @RequestParam(required = false) String studentId , BindingResult bindingResult, ModelAttribute model, HttpSession session) {

        System.out.println("Tutor ID is: " + tutorId);
        System.out.println("Student ID is: " + studentId);

        try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }

            try {
                User student = findStudentBL.getStudentById(studentId);
                User tutor = findTutorBL.getTutorById(tutorId);

                Watchlist watchList = new Watchlist();

                watchList.setTeacher(tutor);
                watchList.setUserId(student.getUserId());

                watchListBL.saveWatchlist(watchList);

            } catch (Exception e) {
                e.printStackTrace();
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        List<Watchlist> watchlist1 = new ArrayList<Watchlist>();

        try {
            watchlist1 = watchListBL.getStudentWatchlist(studentId);
        } catch (Exception e) {
            e.printStackTrace();
        }

        //model.addAttribute("watchList" , watchlist1);

        return "StudentWatchlist";
    }

}

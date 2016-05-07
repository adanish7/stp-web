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

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 4/12/16.
 */

@Controller
@RequestMapping (value = "/watchlist")
public class WatchlistController {

    @Autowired
    private WatchListBL watchListBL;

    @Autowired
    private FindTutorBL findTutorBL;

    @Autowired
    private FindStudentBL findStudentBL;

    @RequestMapping (value = "/list" , method = RequestMethod.GET)
    private String displayWatchList()
    {

        return "StudentWatchlist";
    }

    @RequestMapping (value = "/list/{userId}" , method = RequestMethod.GET)
    private String showWatchList(@PathVariable String userId , Model model, HttpServletRequest request)
    {

        List<Watchlist> studentWatchlist = new ArrayList<Watchlist>();

        try {
            studentWatchlist = watchListBL.getStudentWatchlist(userId);

            /*System.out.println("No of records in Watchlist " + studentWatchlist.size());*/

        } catch (Exception e) {
            e.printStackTrace();
        }

        /*model.addAttribute("studentWatchlist" , studentWatchlist);*/

        HttpSession session = request.getSession(false);

        session.setAttribute("studentWatchlist" , studentWatchlist);

        return "include/Watchlist";
    }

    @RequestMapping(value = "/add/{tutorId}/{studentId}" , method = RequestMethod.GET)
    public String saveWatchlist(@PathVariable(value = "tutorId") String tutorId, @PathVariable(value = "studentId") String studentId) {

        /*try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }*/

        Watchlist watchList = new Watchlist();

            try {

                /*User student = findStudentBL.getStudentById(studentId);*/
                User tutor = findTutorBL.getTutorById(tutorId);

                List<Watchlist> tempWatchlist = watchListBL.getWatchlistByTutor(tutor);

                if(!(tempWatchlist.size() > 0)) {

                    watchList.setTutor(tutor);
                    watchList.setUserId(studentId);

                    watchListBL.saveWatchlist(watchList);
                }

            } catch (Exception e) {
                e.printStackTrace();
            }

        /*} catch (Exception e) {
            e.printStackTrace();
        }*/

        return "redirect:/tutor/find";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteWatchlist(@PathVariable String id, HttpServletRequest request) {

        List<Watchlist> studentWatchlist = new ArrayList<Watchlist>();

        try
        {
            watchListBL.deleteWatchlist(id);

            studentWatchlist = watchListBL.getStudentWatchlist(id);

        } catch (Exception e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession(false);

        session.setAttribute("studentWatchlist" , studentWatchlist);

        return "StudentWatchlist";
    }

}

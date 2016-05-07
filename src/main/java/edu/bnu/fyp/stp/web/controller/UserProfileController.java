package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.ManageUserBL;
import edu.bnu.fyp.stp.constants.City;
import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 3/7/16.
 */
@Controller
@RequestMapping (value = "/user")
public class UserProfileController {

    @Autowired
    private ManageUserBL manageUserBL;

    @RequestMapping(value = "profile/{userId}", method = RequestMethod.GET)
    public String showUserProfile(@PathVariable String userId, Model model) {
        User user = new User();
        try {
            user = manageUserBL.getUserByUserId(userId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("user", user);
        return "ViewProfile";
    }

    @RequestMapping(value = "/student/list", method = RequestMethod.GET)
    public String listStudents() {

        return "ListStudents";
    }

    @RequestMapping(value = "/student/show", method = RequestMethod.GET)
    public String showStudentsList(Model model , HttpSession session) {
        List<User> users = new ArrayList<User>();
        try {
            users= manageUserBL.getAllUsersByRole("student");
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.setAttribute("users" , users);
        //model.addAttribute("subjects", subjects);
        return "include/StudentList";
    }

    @RequestMapping(value = "/student/delete/{userId}", method = RequestMethod.GET)
    public String deleteStudent(@PathVariable String userId, HttpSession session) {

        List<User> users = new ArrayList<User>();

        try {

            manageUserBL.deleteSubject(userId);

            users= manageUserBL.getAllUsersByRole("student");

        } catch (Exception e) {
            e.printStackTrace();
        }

        session.setAttribute("users" , users);

        return "include/StudentList";
    }

    @RequestMapping(value = "/tutor/delete/{userId}", method = RequestMethod.GET)
    public String deleteTutor(@PathVariable String userId, HttpSession session) {

        List<User> users = new ArrayList<User>();

        try {

            manageUserBL.deleteSubject(userId);

            users= manageUserBL.getAllUsersByRole("tutor");

        } catch (Exception e) {
            e.printStackTrace();
        }

        session.setAttribute("users" , users);

        return "ListTutors";
    }

    @RequestMapping(value = "/edit/{userId}", method = RequestMethod.GET)
    public String editUser(@PathVariable String userId, Model model) {
        User user = new User();

        try {
            user = manageUserBL.getUserByUserId(userId);
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("cities", City.values());
        model.addAttribute("user", user);
        return "UpdateProfile";
    }

    @RequestMapping(value = "/view/student/{userId}", method = RequestMethod.GET)
    public String viewStudentProfile(@PathVariable String userId, Model model) {
        User user = new User();

        try {
            user = manageUserBL.getUserByUserId(userId);
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("cities", City.values());
        model.addAttribute("user", user);
        return "StudentViewProfile";
    }

    @RequestMapping(value = "/view/tutor/{userId}", method = RequestMethod.GET)
    public String viewTutorProfile(@PathVariable String userId, Model model) {
        User user = new User();

        try {
            user = manageUserBL.getUserByUserId(userId);
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("cities", City.values());
        model.addAttribute("user", user);
        return "TutorViewProfile";
    }

    @RequestMapping(value = "/profile/student/update", method = RequestMethod.POST)
    public String saveUserProfile(@Valid @ModelAttribute User user, BindingResult bindingResult) {
        try {
            if (bindingResult.hasErrors())
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());

            manageUserBL.updateUserProfile(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "StudentViewProfile";
    }

    @RequestMapping(value = "/tutor/list", method = RequestMethod.GET)
    public String listTutors() {

        return "ListTutors";
    }

    @RequestMapping(value = "/tutor/show" , method = RequestMethod.GET)
    public String showTutorsList(Model model, HttpSession session)
    {
        List<User> users = new ArrayList<User>();
        try {
            users= manageUserBL.getAllUsersByRole("tutor");
        } catch (Exception e) {
            e.printStackTrace();
        }

        session.setAttribute("users" , users);
        return "include/TutorList";
    }

}

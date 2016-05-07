package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.ManageUserBL;
import edu.bnu.fyp.stp.constants.City;
import edu.bnu.fyp.stp.constants.Gender;
import edu.bnu.fyp.stp.constants.TutorType;
import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;


@Controller
public class RegisterController {

    @Autowired
    private ManageUserBL manageUserBL;

    @RequestMapping("/student/register")
    public String showRegisterStudent(Model model) {
        User user = new User();
        model.addAttribute("user" , user);

        model.addAttribute("tutorType", TutorType.values());

        model.addAttribute("city" , City.values());

        model.addAttribute("gender" , Gender.values());

        return "RegisterStudent";
    }

    @RequestMapping("/tutor/register")
    public String showRegisterTutor(Model model) {
        User user = new User();
        model.addAttribute("user" , user);

        model.addAttribute("tutorType", TutorType.values());

        model.addAttribute("city" , City.values());

        model.addAttribute("gender" , Gender.values());

        return "RegisterTutor";
    }

    @RequestMapping(value = "/user/register/student" , method = RequestMethod.POST)
    public String studentRegistration(@Valid @ModelAttribute User user , BindingResult bindingResult) {

        try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }

            if(manageUserBL.getUserByUserEmail(user.getEmail()).getUserId().isEmpty());
            {
                user.setRole("student");
                manageUserBL.registerStudent(user);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "Login";
    }

    @RequestMapping(value = "/user/register/tutor" , method = RequestMethod.POST)
    public String tutorRegistration(@Valid @ModelAttribute User user , BindingResult bindingResult) {

        try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }

            System.out.println("New user's name is " + user.getFirstName());

            user.setRole("tutor");
            manageUserBL.registerStudent(user);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "Login";
    }
}

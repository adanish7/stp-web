package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.ManageUserBL;
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

        return "RegisterStudent";
    }

    @RequestMapping(value = "/user/register/student" , method = RequestMethod.POST)
    public String studentRegisteration(@Valid @ModelAttribute User user , BindingResult bindingResult) {

        try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }

            user.setRole("student");
            manageUserBL.registerStudent(user);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "Login";
    }
}

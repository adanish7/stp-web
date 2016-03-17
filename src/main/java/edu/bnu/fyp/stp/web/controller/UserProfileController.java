package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.ManageUserBL;
import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by Rehan on 3/7/16.
 */
@Controller
public class UserProfileController {

    @Autowired
    private ManageUserBL manageUserBL;

    @RequestMapping(value = "/user/profile/{userId}", method = RequestMethod.GET)
    public String showUserProfile(@PathVariable String userId, Model model) {
        User user = new User();
        try {
            user = manageUserBL.getUserByUserId(userId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("user", user);
        return "UserProfile";
    }

    @RequestMapping(value = "/user/profile", method = RequestMethod.POST)
    public String saveUserProfile(@Validated @ModelAttribute User user, BindingResult bindingResult) {
        try {
            if (bindingResult.hasErrors())
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());

            manageUserBL.updateUserProfile(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/home";
    }

}

package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.domain.model.User;
import edu.bnu.fyp.stp.domain.repository.UserMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Rehan on 3/19/16.
 */

@Controller
public class LoginController {

    @Autowired
    private UserMongoRepository userMongoRepository;

    @RequestMapping("/login")
    public String showLogin()
    {

        return "login";
    }
}

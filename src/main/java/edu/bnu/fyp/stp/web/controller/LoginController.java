package edu.bnu.fyp.stp.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Abdul Basit on 3/30/2016.
 */

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String showLogin(){
        return "Login";
    }
}
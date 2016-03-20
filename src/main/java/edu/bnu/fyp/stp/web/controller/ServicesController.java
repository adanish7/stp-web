package edu.bnu.fyp.stp.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Rehan on 3/20/16.
 */

@Controller
public class ServicesController {

    @RequestMapping("/services")
    public String showAboutUs()
    {

        return "services";
    }

}

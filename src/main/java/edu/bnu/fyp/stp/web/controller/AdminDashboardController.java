package edu.bnu.fyp.stp.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Abdul Basit on 3/24/2016.
 */

@Controller
public class AdminDashboardController {

    @RequestMapping("/admindashboard")
    public String showAdminDashboard()
    {
        return "AdminDashboard";
    }
}

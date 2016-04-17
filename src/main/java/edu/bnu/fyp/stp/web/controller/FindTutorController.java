package edu.bnu.fyp.stp.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Rehan on 4/14/16.
 */

@Controller
public class FindTutorController {


    @RequestMapping (value = "/findtutor")
    public String showFindTutor()
    {

        return "FindTutor";
    }

}

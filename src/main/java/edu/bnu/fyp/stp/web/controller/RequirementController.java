package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.ManageUserBL;
import edu.bnu.fyp.stp.bl.RequirementBL;
import edu.bnu.fyp.stp.constants.BudgetType;
import edu.bnu.fyp.stp.constants.Duration;
import edu.bnu.fyp.stp.constants.RequirementsPriority;
import edu.bnu.fyp.stp.constants.TutorType;
import edu.bnu.fyp.stp.domain.model.Requirement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

/**
 * Created by Rehan on 4/8/16.
 */

@Controller
public class RequirementController {

    @Autowired
    private RequirementBL requirementBL;

    @RequestMapping(value = "/postrequirement")
    public String showStudentRequirement(Model model)
    {

        model.addAttribute("tutorType", TutorType.values());
        model.addAttribute("duration", Duration.values());
        model.addAttribute("priority", RequirementsPriority.values());
        model.addAttribute("budgetType", BudgetType.values());

        Requirement requirement = new Requirement();

        model.addAttribute("requirement" , requirement);

        return "PostRequirement";
    }

    @RequestMapping(value = "/requirement/save" , method = RequestMethod.POST)
    public String saveStudentRequirement(@Validated @ModelAttribute Requirement requirement, BindingResult bindingResult) {

        try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }

            requirementBL.saveRequirement(requirement);
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "Login";
    }

}

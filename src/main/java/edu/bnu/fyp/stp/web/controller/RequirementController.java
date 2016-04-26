package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.CourseBL;
import edu.bnu.fyp.stp.bl.ManageUserBL;
import edu.bnu.fyp.stp.bl.RequirementBL;
import edu.bnu.fyp.stp.bl.SubjectBL;
import edu.bnu.fyp.stp.constants.BudgetType;
import edu.bnu.fyp.stp.constants.Duration;
import edu.bnu.fyp.stp.constants.RequirementsPriority;
import edu.bnu.fyp.stp.constants.TutorType;
import edu.bnu.fyp.stp.domain.model.Course;
import edu.bnu.fyp.stp.domain.model.Requirement;
import edu.bnu.fyp.stp.domain.model.Subject;
import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 4/8/16.
 */

@Controller
@RequestMapping (value = "/requirement")
public class RequirementController {

    @Autowired
    private RequirementBL requirementBL;

    @Autowired
    private SubjectBL subjectBL;

    @Autowired
    private CourseBL courseBL;

    @RequestMapping(value = "/post")
    public String showStudentRequirement(Model model)
    {

        List<Subject> subjects = new ArrayList<Subject>();

        try
        {
            subjects = subjectBL.getAllSubjects();
        }
        catch (Exception e)
        {
            e.getStackTrace();
        }

        model.addAttribute("tutorType", TutorType.values());
        model.addAttribute("duration", Duration.values());
        model.addAttribute("priority", RequirementsPriority.values());
        model.addAttribute("budgetType", BudgetType.values());

        /*System.out.println(subjects.size());*/

        model.addAttribute("subjects", subjects);

        Requirement requirement = new Requirement();

        model.addAttribute("requirement" , requirement);

        return "PostRequirement";
    }

    @RequestMapping(value = "/save" , method = RequestMethod.POST)
    public String saveStudentRequirement(@Valid @ModelAttribute Requirement requirement, BindingResult bindingResult, Model model) {

        try
        {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }

            else
            {
                // This else has no use here
            }
            requirementBL.saveRequirement(requirement);
        } catch (Exception e) {
            e.printStackTrace();
        }

        Requirement requirement1 = new Requirement();

        model.addAttribute("requirement" , requirement1);

        return "PostRequirement";
    }

    @RequestMapping(value = "/list")
    public String listRequirement(Model model)
    {

        List<Requirement> listRequirement = new ArrayList<Requirement>();

        try
        {

            listRequirement = requirementBL.getRequirementlist();

            /*System.out.println(listRequirement.get(1));*/

            model.addAttribute("requirements", listRequirement);

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return("ListRequirements");
    }

    @RequestMapping(value = "/courseList/{subject}")
    public String showCourseList(@PathVariable String subject, Model model)
    {

        List<Course> subjectList = new ArrayList<Course>();

        try
        {
            subjectList = courseBL.findBySubject(subject);
        }
        catch (Exception e)
        {
            e.getStackTrace();
        }

        model.addAttribute("subjectList", subjectList);

        Requirement requirement = new Requirement();

        model.addAttribute("requirement" , requirement);

        return "include/CourseList";
    }

}

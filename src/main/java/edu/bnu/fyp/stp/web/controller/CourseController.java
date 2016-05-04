package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.CourseBL;
import edu.bnu.fyp.stp.bl.SubjectBL;
import edu.bnu.fyp.stp.domain.model.Course;
import edu.bnu.fyp.stp.domain.model.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 4/8/16.
 */

@Controller
@RequestMapping(value = "/course")
public class CourseController {

    @Autowired
    private CourseBL courseBL;

    @Autowired
    private SubjectBL subjectBL;

    @RequestMapping (value = "/add" , method = RequestMethod.GET)
    private String addCourse(Model model)
    {

        Course course = new Course();

        model.addAttribute("course", course);


        return "AddCourse";
    }

    @RequestMapping(value = "/save" , method = RequestMethod.POST)
    public String saveStudentRequirement(@Valid @ModelAttribute Course course, BindingResult bindingResult, Model model) {

        try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
            }

            courseBL.saveRequirement(course);
        } catch (Exception e) {
            e.printStackTrace();
        }

        Course course1 = new Course();

        model.addAttribute("course" , course1);

        return "AddCourse";
    }

}

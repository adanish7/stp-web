package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.ManageSubjectsBL;
import edu.bnu.fyp.stp.domain.model.Subject;
import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "/subject")
public class SubjectController {

    @Autowired
    private ManageSubjectsBL manageSubjectsBL;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String showSubjects(Model model) {

        /*List<Subject> subjects = new ArrayList<Subject>();
        try {
            subjects = manageSubjectsBL.getAllSubjects();
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("subjects", subjects);*/
        return "ListSubjects";
    }

    @RequestMapping(value = "/show", method = RequestMethod.GET)
    public String showListSubjects(Model model) {

        List<Subject> subjects = new ArrayList<Subject>();
        try {
            subjects = manageSubjectsBL.getAllSubjects();
        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("subjects", subjects);
        return "include/SubjectList";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String addSubject(Model model) {
        model.addAttribute("subject", new Subject());
        return "EditSubject";
    }

    @RequestMapping(value = "/edit/{subjectId}", method = RequestMethod.GET)
    public String editSubject(@PathVariable String subjectId, Model model) {
        Subject subject = new Subject();
        try {
            subject = manageSubjectsBL.getSubjectById(subjectId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("subject", subject);
        return "EditSubject";
    }


    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String saveUserProfile(@Valid @ModelAttribute Subject subject, BindingResult bindingResult) {
        try {
            if (bindingResult.hasErrors()) {
                System.out.println(bindingResult.getAllErrors().iterator().next().toString());
                return "EditSubject";
            }
            manageSubjectsBL.saveSubject(subject);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:/subject/list";
    }

    @RequestMapping(value = "/delete/{subjectId}", method = RequestMethod.GET)
    public String deleteSubject(@PathVariable String subjectId, Model model) {

        List<Subject> subjects = new ArrayList<Subject>();

        Subject subject = new Subject();
        try {

            /*System.out.println(subjectId);*/

            manageSubjectsBL.deleteSubject(subjectId);

            subjects = manageSubjectsBL.getAllSubjects();

        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("subjects", subjects);

        return "ListSubjects";
    }
}

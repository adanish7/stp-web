package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.FindStudentBL;
import edu.bnu.fyp.stp.bl.FindTutorBL;
import edu.bnu.fyp.stp.bl.SubjectBL;
import edu.bnu.fyp.stp.constants.City;
import edu.bnu.fyp.stp.constants.Gender;
import edu.bnu.fyp.stp.constants.TutorType;
import edu.bnu.fyp.stp.domain.model.Subject;
import edu.bnu.fyp.stp.domain.model.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 4/14/16.
 */

@Controller
@RequestMapping(value = "/student")
public class FindStudentController {
    private static final Logger LOGGER = LoggerFactory.getLogger(FindStudentController.class);

    @Autowired
    private FindStudentBL findStudentBL;

    @Autowired
    private SubjectBL subjectBL;

    @RequestMapping(value = "/find")
    public String showFindStudent(Model model) {

        List<User> studentList = new ArrayList<User>();

        try {

            studentList = findStudentBL.studentListAll();

            List<Subject> subjectList = subjectBL.getAllSubjects();

            model.addAttribute("subjectList", subjectList);

            model.addAttribute("city", City.values());

            model.addAttribute("gender", Gender.values());

        } catch (Exception e) {
            e.printStackTrace();
        }

        model.addAttribute("StudentList", studentList);

        return "FindStudent";
    }

    @RequestMapping(value = "/find/searchCriteria", method = RequestMethod.GET)
    public String showTutor(@RequestParam(required = false) String[] locations, @RequestParam(required = false) String[] subjects, Model model, HttpServletResponse response) {

        try {

            List<User> studentList = new ArrayList<User>();

            if (locations.length>0) {

                   studentList.addAll(findStudentBL.studentListByLocation(locations));
            }

            if (subjects.length>0)
            {
                studentList.addAll(findStudentBL.studentListBySubject(subjects));
            }

            if (locations.length == 0 && subjects.length == 0)
            {
                studentList = findStudentBL.studentListAll();
            }

            //need to renew this

            model.addAttribute("StudentList", studentList);
            //throw new Exception("Error");

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
        }

        return "include/StudentSearchResults";
    }

}

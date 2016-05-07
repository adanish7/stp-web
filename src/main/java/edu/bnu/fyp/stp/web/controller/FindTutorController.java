package edu.bnu.fyp.stp.web.controller;

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
import org.springframework.web.bind.annotation.PathVariable;
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
@RequestMapping(value = "/tutor")
public class FindTutorController {
    private static final Logger LOGGER = LoggerFactory.getLogger(FindTutorController.class);

    @Autowired
    private FindTutorBL findTutorBL;

    @Autowired
    private SubjectBL subjectBL;

    @RequestMapping(value = "/find")
    public String showFindTutor(Model model) {

        try {

            List<Subject> subjectList = subjectBL.getAllSubjects();



            /*for(int i = 0 ; i < subjectList.size() ; i++) {
                System.out.println(subjectList);
            }*/

            model.addAttribute("subjectList", subjectList);


            model.addAttribute("tutorTypes", TutorType.values());
            model.addAttribute("city", City.values());

            model.addAttribute("gender", Gender.values());

            //model.addAttribute("tutorList", tutorList);

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "FindTutor";
    }

    @RequestMapping(value = "/find/criteria", method = RequestMethod.GET)
    public String showTutor(@RequestParam(required = false) String[] locations, @RequestParam(required = false) String[] subjects,
                            @RequestParam(required = false) String[] experiences, @RequestParam(required = false) String[] tutorTypes, Model model, HttpServletResponse response) {

        try {
            //LOGGER.info("Locations: {}", locations.length);
            /*List<User> tutorList = findTutorBL.tutorListAll();*/

            List<User> tutorList = new ArrayList<User>();
            /*List<User> tutorListTemp = new ArrayList<User>();*/

            if (locations.length>0 && subjects.length == 0 && experiences.length == 0 && tutorTypes.length == 0 ) {

                /*for (int i = 0 ; i<locations.length ; i++)
                {*/
                    tutorList = findTutorBL.tutorListByLocation(locations);
                    /*tutorList.addAll(tutorListTemp);*/
                    /*LOGGER.info("Locations: {}", locations.length);
                    System.out.println(locations);*/
                /*}*/
            }

            if (locations.length == 0 && subjects.length>0 && experiences.length == 0 && tutorTypes.length == 0 )
            {
                tutorList.addAll(findTutorBL.tutorListBySubject(subjects));
                /*LOGGER.info("Subjects: {}", subjects.length);*/
            }

            if (locations.length == 0 && subjects.length == 0 && experiences.length>0 && tutorTypes.length == 0)
            {
                tutorList.addAll(findTutorBL.tutorListByExperience(experiences));
                /*LOGGER.info("Experiences: {}", experiences.length);*/
            }

            if (locations.length == 0 && subjects.length == 0 && experiences.length == 0 && tutorTypes.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListByTutorType(tutorTypes));
                /*LOGGER.info("TutorTypes: {}", tutorTypes.length);*/
            }

            if (locations.length>0 && subjects.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListByLocationAndSubject(locations,subjects));

            }

            if (locations.length>0 && experiences.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListByLocationAndExperience(locations,experiences));

            }

            if (locations.length>0 && tutorTypes.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListByLocationAndTutorType(locations,tutorTypes));

            }

            if (subjects.length>0 && experiences.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListBySubjectAndExperience(subjects,experiences));

            }

            if (subjects.length>0 && tutorTypes.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListBySubjectAndTutorType(subjects,tutorTypes));

            }

            if (experiences.length>0 && tutorTypes.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListByExperienceAndTutorType(experiences,tutorTypes));

            }

            if (locations.length>0 && subjects.length>0 && experiences.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListByLocationAndSubjectAndExperience(locations,subjects,experiences));

            }

            if (locations.length>0 && subjects.length>0 && tutorTypes.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListByLocationAndSubjectAndTutorType(locations,subjects,tutorTypes));

            }

            if (subjects.length>0 && experiences.length>0 && tutorTypes.length>0)
            {
                tutorList.addAll(findTutorBL.tutorListBySubjectAndExperienceAndTutorType(subjects,experiences,tutorTypes));

            }

            if (locations.length>0 && subjects.length>0 && experiences.length>0 && tutorTypes.length >0)
            {
                tutorList.addAll(findTutorBL.tutorListByLocationAndSubjectAndExperienceAndTutorType(locations,subjects,experiences,tutorTypes));

            }

            if (locations.length == 0 && subjects.length == 0 && experiences.length == 0 && tutorTypes.length == 0 )
            {
                tutorList = findTutorBL.tutorListAll();
            }

            /*System.out.println(tutorList.size());*/

            //need to renew this

            model.addAttribute("tutorList", tutorList);
            //throw new Exception("Error");

        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpStatus.INTERNAL_SERVER_ERROR.value());
        }

        return "include/TutorSearchResults";
    }

}

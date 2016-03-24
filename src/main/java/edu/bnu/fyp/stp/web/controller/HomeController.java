package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.domain.model.TutorType;
import edu.bnu.fyp.stp.domain.repository.TutorTypeMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Abdul Basit on 3/2/2016.
 */
@Controller
public class HomeController {

    @Autowired
    private TutorTypeMongoRepository tutorTypeMongoRepository;

    @RequestMapping("/home")
    public String showHome() {
        List<TutorType> tutorTypes = tutorTypeMongoRepository.findAll();
        for (TutorType tutorType : tutorTypes) {
            System.out.println(tutorType.getTypeId() + " : " + tutorType.getTypeName());
        }
        return "Home";
    }
}

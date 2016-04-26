package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.User;
import edu.bnu.fyp.stp.domain.repository.FindTutorMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 4/17/16.
 */

@Service
public class FindTutorBL {

    @Autowired
    private FindTutorMongoRepository findTutorMongoRepository;

    public List <User> tutorList (String x) throws Exception {

        return findTutorMongoRepository.findByFirstName(x);
    }

    public List <User> tutorListAll () throws Exception {

        String x = "tutor";

        return findTutorMongoRepository.findByRole(x);
    }

    public List <User> tutorListByLocation (String[] x) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String y = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByCityAndRole(x[i],y));
        }


        return fullList;
    }

    public List <User> tutorListBySubject (String[] x) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String y = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findBySubjectAndRole(x[i],y));
        }

        return fullList;
    }

    public List <User> tutorListByExperience (String[] x) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String y = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByTutorExperienceAndRole(x[i],y));
        }

        return fullList;
    }

    public List <User> tutorListByTutorType (String[] x) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String y = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByTutorTypeAndRole(x[i],y));
        }

        return fullList;
    }

}

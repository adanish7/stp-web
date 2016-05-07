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

    public User getTutorById (String x) throws Exception {

        return findTutorMongoRepository.findOne(x);
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

    public List <User> tutorListByLocationAndSubject (String[] x , String[] y) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String z = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByCityAndSubjectAndRole(x[i],y[i],z));
        }


        return fullList;
    }

    public List <User> tutorListByLocationAndExperience (String[] x , String[] y) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String z = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByCityAndTutorExperienceAndRole(x[i],y[i],z));
        }


        return fullList;
    }

    public List <User> tutorListByLocationAndTutorType (String[] x , String[] y) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String z = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByCityAndTutorTypeAndRole(x[i],y[i],z));
        }


        return fullList;
    }

    public List <User> tutorListBySubjectAndExperience (String[] x , String[] y) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String z = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findBySubjectAndTutorExperienceAndRole(x[i],y[i],z));
        }


        return fullList;
    }

    public List <User> tutorListBySubjectAndTutorType (String[] x , String[] y) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String z = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findBySubjectAndTutorTypeAndRole(x[i],y[i],z));
        }


        return fullList;
    }

    public List <User> tutorListByExperienceAndTutorType (String[] x , String[] y) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String z = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByTutorExperienceAndTutorTypeAndRole(x[i],y[i],z));
        }


        return fullList;
    }

    public List <User> tutorListByLocationAndSubjectAndExperience (String[] x , String[] y , String[] z) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String a = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByCityAndSubjectAndTutorExperienceAndRole(x[i],y[i],z[i],a));
        }


        return fullList;
    }

    public List <User> tutorListByLocationAndSubjectAndTutorType (String[] x , String[] y , String[] z) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String a = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByCityAndSubjectAndTutorTypeAndRole(x[i],y[i],z[i],a));
        }


        return fullList;
    }

    public List <User> tutorListBySubjectAndExperienceAndTutorType (String[] x , String[] y , String[] z) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String a = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findBySubjectAndTutorExperienceAndTutorTypeAndRole(x[i],y[i],z[i],a));
        }


        return fullList;
    }

    public List <User> tutorListByLocationAndSubjectAndExperienceAndTutorType (String[] w , String[] x , String[] y , String[] z) throws Exception {

        List <User> fullList = new ArrayList<User>();

        String a = "tutor";

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findTutorMongoRepository.findByCityAndSubjectAndTutorExperienceAndTutorTypeAndRole(w[i],x[i],y[i],z[i],a));
        }


        return fullList;
    }

}

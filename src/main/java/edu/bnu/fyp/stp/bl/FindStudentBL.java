package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.User;
import edu.bnu.fyp.stp.domain.repository.FindStudentMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Rehan on 4/17/16.
 */

@Service
public class FindStudentBL {

    @Autowired
    private FindStudentMongoRepository findStudentMongoRepository;

    public List <User> tutorList (String x) throws Exception {

        return findStudentMongoRepository.findByFirstName(x);
    }

    public List <User> studentListAll () throws Exception {

        String x = "student";

        return findStudentMongoRepository.findByRole(x);
    }

    public List <User> studentListByLocation (String[] x) throws Exception {

        List <User> fullList = new ArrayList<User>();

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findStudentMongoRepository.findByCityAndRole(x[i],"student"));
        }


        return fullList;
    }

    public List <User> studentListBySubject (String[] x) throws Exception {

        List <User> fullList = new ArrayList<User>();

        for (int i = 0 ; i<x.length ; i++)
        {
            fullList.addAll(findStudentMongoRepository.findBySubjectAndRole(x[i],"student"));
        }

        return fullList;
    }

}

package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.Subject;
import edu.bnu.fyp.stp.domain.repository.SubjectMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Abdul Basit on 3/16/2016.
 */
@Service
public class ManageSubjectsBL {

    @Autowired
    private SubjectMongoRepository subjectMongoRepository;

    public List<Subject> getAllSubjects() throws Exception {
        return subjectMongoRepository.findAll();
    }

    public Subject getSubjectById(String subjectId) throws Exception {
        return subjectMongoRepository.findOne(subjectId);
    }

    public void saveSubject(Subject subject) {
        subjectMongoRepository.save(subject);
    }
}

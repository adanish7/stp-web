package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.Course;
import edu.bnu.fyp.stp.domain.model.Subject;
import edu.bnu.fyp.stp.domain.repository.SubjectMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by Rehan on 4/8/16.
 */

@Service
public class SubjectBL {

    @Autowired
    private SubjectMongoRepository subjectMongoRepository;

    @Autowired
    private MongoTemplate mongoTemplate;

    public void saveRequirement(Subject subject) throws Exception {
        if (StringUtils.isEmpty(subject.getSubjectId()))
            subject.setSubjectId(null);

        subjectMongoRepository.save(subject);
    }

    public List<Subject> getAllSubjects() throws Exception
    {
        return subjectMongoRepository.findAll();
    }

    public List<Subject> findBySubjectName(String subject) throws Exception
    {
        return subjectMongoRepository.findBySubjectName(subject);
    }

}

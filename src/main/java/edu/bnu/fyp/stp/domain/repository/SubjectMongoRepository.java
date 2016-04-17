package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.Subject;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

/**
 * Created by Abdul Basit on 3/16/2016.
 * See reference http://docs.spring.io/spring-data/data-document/docs/current/reference/html/
 */
public interface SubjectMongoRepository extends MongoRepository<Subject, String> {

    public List<Subject> findBySubjectCode(String subjectCode) throws Exception;

    public List<Subject> findBySubjectCodeAndSubjectName(String subjectCode, String subjectName) throws Exception;

    public List<Subject> findBySubjectCodeOrSubjectName(String subjectCode, String subjectName) throws Exception;

    public List<Subject> findBySubjectName(String subjectName) throws Exception;
}

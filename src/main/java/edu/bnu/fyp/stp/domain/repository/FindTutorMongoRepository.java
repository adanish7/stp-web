package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.User;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

/**
 * Created by Rehan on 4/17/16.
 */
public interface FindTutorMongoRepository extends MongoRepository<User, String> {

    public List <User> findByFirstName(String firstName) throws Exception;

    public List <User> findByEmail(String email) throws Exception;

    public List <User> findByRole(String role) throws Exception;

    public List <User> findByTutorExperienceAndRole(String tutorExperience, String role) throws Exception;

    public List <User> findByCityAndRole(String city, String role) throws Exception;

    public List <User> findByTutorTypeAndRole(String tutorType, String role) throws Exception;

    public List <User> findBySubjectAndRole(String subject, String role) throws Exception;

}

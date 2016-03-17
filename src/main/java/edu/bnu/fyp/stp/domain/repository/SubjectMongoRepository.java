package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.Subject;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Created by Abdul Basit on 3/16/2016.
 */
public interface SubjectMongoRepository extends MongoRepository<Subject, String> {
}

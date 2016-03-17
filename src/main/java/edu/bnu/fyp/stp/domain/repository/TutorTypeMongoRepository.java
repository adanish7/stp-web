package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.TutorType;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Abdul Basit on 3/2/2016.
 */
public interface TutorTypeMongoRepository extends MongoRepository<TutorType, String> {
}

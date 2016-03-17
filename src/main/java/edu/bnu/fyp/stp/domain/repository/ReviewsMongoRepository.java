package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.Reviews;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Created by Rehan on 3/8/16.
 */
public interface ReviewsMongoRepository extends MongoRepository <Reviews , String> {
}

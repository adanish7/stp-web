package edu.bnu.fyp.stp.domain.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import edu.bnu.fyp.stp.domain.model.Course;

/**
 * Created by Rehan on 3/8/16.
 */
public interface CourseMongoRepository extends MongoRepository <Course, String> {
}

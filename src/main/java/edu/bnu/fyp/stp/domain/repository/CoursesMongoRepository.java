package edu.bnu.fyp.stp.domain.repository;

import edu.bnu.fyp.stp.domain.model.Course;
import org.springframework.data.mongodb.repository.MongoRepository;

/**
 * Created by Rehan on 4/12/16.
 */
public interface CoursesMongoRepository extends MongoRepository<Course, String> {
}

package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.Course;
import edu.bnu.fyp.stp.domain.model.Subject;
import edu.bnu.fyp.stp.domain.repository.CoursesMongoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by Rehan on 4/8/16.
 */

@Service
public class CourseBL {

    @Autowired
    private CoursesMongoRepository coursesMongoRepository;

    @Autowired
    private MongoTemplate mongoTemplate;

    public void saveRequirement(Course course) throws Exception {
        if (StringUtils.isEmpty(course.getCourseId()))
            course.setCourseId(null);

        coursesMongoRepository.save(course);
    }

    public CourseBL() {
        super();
    }
}

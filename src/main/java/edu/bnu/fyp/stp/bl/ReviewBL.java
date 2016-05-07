package edu.bnu.fyp.stp.bl;

import edu.bnu.fyp.stp.domain.model.Review;
import edu.bnu.fyp.stp.domain.repository.ReviewsMongoRepository;
import org.springframework.stereotype.Service;

/**
 * Created by Rehan on 5/7/16.
 */

@Service
public class ReviewBL {

    private ReviewsMongoRepository reviewsMongoRepository;

    public void saveReview(Review review)
    {
        reviewsMongoRepository.save(review);
    }

    public Review getReview(String studentId)
    {
        return reviewsMongoRepository.getReviewByStudentId(studentId);
    }
}

package edu.bnu.fyp.stp.web.controller;

import edu.bnu.fyp.stp.bl.ReviewBL;
import edu.bnu.fyp.stp.domain.model.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.sql.Time;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Rehan on 5/7/16.
 */

@Controller
@RequestMapping (value = "/reviews")
public class ReviewController {

    @Autowired
    private ReviewBL reviewBL;

    public ReviewController() {
    }

    @RequestMapping (value = "/show")
    public String showReview()
    {

        return "Reviews";
    }

    @RequestMapping (value = "/add/{tutorId}/{studentId}")
    public String addReview(@PathVariable(value = "tutorId") String tutorId, @PathVariable(value = "studentId") String studentId)
    {

        Review review = new Review();

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
        Date date = new Date();
        System.out.println(dateFormat.format(date)); //2014/08/06 15:59:48

        review.setTutorId(tutorId);
        review.setStudentId(studentId);
        review.setDate(dateFormat);

        Review tempReview = new Review();

        try {
            tempReview = reviewBL.getReview(studentId);

            if (tempReview.getId().isEmpty())
            {
                reviewBL.saveReview(review);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "Reviews";
    }

}

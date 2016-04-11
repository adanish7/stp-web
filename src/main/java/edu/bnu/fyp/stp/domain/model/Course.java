package edu.bnu.fyp.stp.domain.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Created by Rehan on 3/8/16.
 */

@Document (collection = "courses")
public class Course {

    @Id
    private String courseId;

    private String courseName;

    private String subject;

    public Course() {
        super();
    }

    public Course(String courseId, String courseName, String subject) {
        this.courseId = courseId;
        this.courseName = courseName;
        this.subject = subject;
    }

    public String getCourseId() {
        return courseId;
    }

    public void setCourseId(String courseId) {
        this.courseId = courseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
}

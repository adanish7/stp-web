package edu.bnu.fyp.stp.domain.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.sql.Time;
import java.text.DateFormat;
import java.util.Date;

/**
 * Created by Rehan on 3/8/16.
 */

@Document (collection = "reviews")
public class Review {

    @Id
    private String Id;

    private String tutorId;

    private String studentId;

    private DateFormat date;

    public String getId() {
        return Id;
    }

    public void setId(String id) {
        Id = id;
    }

    public String getTutorId() {
        return tutorId;
    }

    public void setTutorId(String tutorId) {
        this.tutorId = tutorId;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public DateFormat getDate() {
        return date;
    }

    public void setDate(DateFormat date) {
        this.date = date;
    }

    public Review() {
        super();
    }

    public Review(String id, String tutorId, String studentId, DateFormat date) {
        Id = id;
        this.tutorId = tutorId;
        this.studentId = studentId;
        this.date = date;
    }
}

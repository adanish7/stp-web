package edu.bnu.fyp.stp.domain.model;

import edu.bnu.fyp.stp.constants.BudgetType;
import edu.bnu.fyp.stp.constants.Duration;
import edu.bnu.fyp.stp.constants.RequirementsPriority;
import edu.bnu.fyp.stp.constants.TutorType;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.stereotype.Service;

import java.text.DateFormat;
import java.util.Date;

@Document(collection = "requirement")
public class Requirement {

    @Id
    private String id;

    private DateFormat createdOn;
    private Double budget;
    private RequirementsPriority priority;
    private TutorType tutorType;
    private String subject;
    private String course;
    private Duration duration;
    private RequirementsPriority requirementsPriority;
    private String title;
    private String requirementDetails;
    private BudgetType budgetType;

    public Requirement(String id, DateFormat createdOn, Double budget, RequirementsPriority priority, TutorType tutorType, String subject, String course, Duration duration, RequirementsPriority requirementsPriority, String title, String requirementDetails, BudgetType budgetType) {
        this.id = id;
        this.createdOn = createdOn;
        this.budget = budget;
        this.priority = priority;
        this.tutorType = tutorType;
        this.subject = subject;
        this.course = course;
        this.duration = duration;
        this.requirementsPriority = requirementsPriority;
        this.title = title;
        this.requirementDetails = requirementDetails;
        this.budgetType = budgetType;
    }

    public Requirement() {
        super();
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public DateFormat getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(DateFormat createdOn) {
        this.createdOn = createdOn;
    }

    public Double getBudget() {
        return budget;
    }

    public void setBudget(Double budget) {
        this.budget = budget;
    }

    public RequirementsPriority getPriority() {
        return priority;
    }

    public void setPriority(RequirementsPriority priority) {
        this.priority = priority;
    }

    public TutorType getTutorType() {
        return tutorType;
    }

    public void setTutorType(TutorType tutorType) {
        this.tutorType = tutorType;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public Duration getDuration() {
        return duration;
    }

    public void setDuration(Duration duration) {
        this.duration = duration;
    }

    public RequirementsPriority getRequirementsPriority() {
        return requirementsPriority;
    }

    public void setRequirementsPriority(RequirementsPriority requirementsPriority) {
        this.requirementsPriority = requirementsPriority;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getRequirementDetails() {
        return requirementDetails;
    }

    public void setRequirementDetails(String requirementDetails) {
        this.requirementDetails = requirementDetails;
    }

    public BudgetType getBudgetType() {
        return budgetType;
    }

    public void setBudgetType(BudgetType budgetType) {
        this.budgetType = budgetType;
    }
}

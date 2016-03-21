package edu.bnu.fyp.stp.domain.model;

import edu.bnu.fyp.stp.constants.RequirementsPriority;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.stereotype.Service;

import java.util.Date;

/**
 * Created by Abdul Basit on 3/2/2016.
 */
@Document(collection = "requirements")
public class Requirement {

    @Id
    private String id;

    private Date createdOn;
    private Date modifiedOn;
    private Double budget;
    private RequirementsPriority priority;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }

    public Date getModifiedOn() {
        return modifiedOn;
    }

    public void setModifiedOn(Date modifiedOn) {
        this.modifiedOn = modifiedOn;
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
}

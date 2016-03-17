package edu.bnu.fyp.stp.domain.model;

import edu.bnu.fyp.stp.constants.ActivationStatus;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

/**
 * Created by Abdul Basit on 3/16/2016.
 */
@Document
public class Subject {

    @Id
    private String subjectId;
    private String subjectName;
    private ActivationStatus status;

    public String getSubjectId() {
        return subjectId;
    }

    public void setSubjectId(String subjectId) {
        this.subjectId = subjectId;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public ActivationStatus getStatus() {
        return status;
    }

    public void setStatus(ActivationStatus status) {
        this.status = status;
    }
}

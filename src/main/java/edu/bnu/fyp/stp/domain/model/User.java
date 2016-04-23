package edu.bnu.fyp.stp.domain.model;

import edu.bnu.fyp.stp.constants.City;
import edu.bnu.fyp.stp.constants.Gender;
import edu.bnu.fyp.stp.constants.TutorType;
import edu.bnu.fyp.stp.constants.UserType;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.Date;
import java.util.List;

/**
 * Created by Rehan on 3/7/16.
 */
@Document(collection = "user")
public class User {

    @Id
    private String userId;

    private String firstName;
    private String lastName;
    private String password;

    @NotEmpty
    @Email
    private String email;

    private String userName;

    private Gender gender;

    private City city;

    private String tutorExperience;

    private String tutorQualification;

    private String subject;

    private String phone;
    private Date birthDate;
    private List<String> userRoles;
    private String role;

    private TutorType tutorType;

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public List<String> getUserRoles() {
        return userRoles;
    }

    public void setUserRoles(List<String> userRoles) {
        this.userRoles = userRoles;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public City getLocation() {
        return city;
    }

    public void setLocation(City location) {
        this.city = location;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public String getTutorExperience() {
        return tutorExperience;
    }

    public void setTutorExperience(String tutorExperience) {
        this.tutorExperience = tutorExperience;
    }

    public String getTutorQualification() {
        return tutorQualification;
    }

    public void setTutorQualification(String tutorQualification) {
        this.tutorQualification = tutorQualification;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public TutorType getTutorType() {
        return tutorType;
    }

    public void setTutorType(TutorType tutorType) {
        this.tutorType = tutorType;
    }

    public User(String userId, String firstName, String lastName, String password, String email, Gender gender, City city, String tutorExperience, String tutorQualification, String subject, String phone, Date birthDate, List<String> userRoles, String role) {
        this.userId = userId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.password = password;
        this.email = email;
        this.gender = gender;
        this.city = city;
        this.tutorExperience = tutorExperience;
        this.tutorQualification = tutorQualification;
        this.subject = subject;
        this.phone = phone;
        this.birthDate = birthDate;
        this.userRoles = userRoles;
        this.role = role;
    }

    public User() {
        super();
    }
}
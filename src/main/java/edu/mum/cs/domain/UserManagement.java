package edu.mum.cs.domain;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

public class UserManagement implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private String FirstName;
    private String LastName;
    private String Email;
    private String gender;
    private String status;

    public UserManagement(String firstName, String lastName, String email, String gender, String status) {
        FirstName = firstName;
        LastName = lastName;
        Email = email;
        this.gender = gender;
        this.status = status;
    }
    public UserManagement(String status){

           this.status=status;
    }

    public String getFirstName() {
        return FirstName;
    }

    public String getLastName() {
        return LastName;
    }

    public String getEmail() {
        return Email;
    }

    public String getGender() {
        return gender;
    }

    public String getStatus() {
        return status;
    }

    public void setFirstName(String firstName) {
        FirstName = firstName;
    }

    public void setLastName(String lastName) {
        LastName = lastName;
    }

    public void setEmail(String email) {
        Email = email;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}

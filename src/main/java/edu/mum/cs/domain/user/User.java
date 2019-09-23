package edu.mum.cs.domain.user;

import lombok.Data;

import javax.persistence.Entity;
import java.io.Serializable;

@Entity
@Data
public class User implements Serializable {
    private long id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private  int folowers;
    private Acesslevel access;


    public User(String firstName, String lastName, String email, String password, int folowers, Acesslevel access) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.folowers = folowers;
        this.access = access;
    }

    public User() {
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

    public String getEmail() {
        return email;
    }

    public int getFolowers() {
        return folowers;
    }

    public String getPassword() {
        return password;
    }

    public Acesslevel getAccess() {
        return access;
    }

    public void setAccess(Acesslevel access) {
        this.access = access;
    }
}

package edu.mum.cs.domain;



import javax.persistence.*;
import java.io.Serializable;

@Entity
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private  int folowers;

    @Column(name = "access", nullable = false)
    @Enumerated(EnumType.STRING)
    private Acesslevel access;

    @Column(name = "gender", nullable = false)
    @Enumerated(EnumType.STRING)
    private EGender gender;


    public User() {
    }

    public User(String firstName, String lastName, String email, String password, int folowers, Acesslevel access, EGender gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.folowers = folowers;
        this.access = access;
        this.gender = gender;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getFolowers() {
        return folowers;
    }

    public void setFolowers(int folowers) {
        this.folowers = folowers;
    }

    public Acesslevel getAccess() {
        return access;
    }

    public void setAccess(Acesslevel access) {
        this.access = access;
    }

    public EGender getGender() {
        return gender;
    }

    public void setGender(EGender gender) {
        this.gender = gender;
    }
}

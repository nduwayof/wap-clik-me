package edu.mum.cs.domain;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String image;

    @Column(name = "access", nullable = false)
    @Enumerated(EnumType.STRING)
    private Acesslevel access;

    @Column(name = "gender", nullable = false)
    @Enumerated(EnumType.STRING)
    private EGender gender;

    @Transient
    private List<Post> posts = new ArrayList<>();

    @Transient
    List<User> followers = new ArrayList<>();

    @Transient
    List<User>following = new ArrayList<>();



    public User() {
    }


    public User(String firstName, String lastName, String email, String password, Acesslevel access, EGender gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.access = access;
        this.gender = gender;
    }

    public User(String firstName, String lastName, String email, String password, String image, Acesslevel access, EGender gender, List<Post> posts) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.image = image;
        this.access = access;
        this.gender = gender;
        this.posts = posts;
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


    public List<Post> getPosts() {
        return posts;
    }

    public void setPosts(List<Post> posts) {
        this.posts = posts;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public List<User> getFollowers() {
        return followers;
    }

    public void setFollowers(List<User> followers) {
        this.followers = followers;
    }

    public List<User> getFollowing() {
        return following;
    }

    public void setFollowing(List<User> following) {
        this.following = following;
    }
}

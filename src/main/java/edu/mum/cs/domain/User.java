package edu.mum.cs.domain;


import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * The type User.
 */
@Entity
@Table(name = "USERS")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private long id;

    @Column(name = "FIRST_NAME", nullable = false)
    private String firstName;

    @Column(name = "LAST_NAME", nullable = false)
    private String lastName;

    @Column(name = "EMAIL", nullable = false)
    private String email;

    private String image;


    @Column(name = "PASSWORD", nullable = false)
    private String password;

    @Column(name = "ACCESS", nullable = false)
    private String access;


    @Transient
    private List<Post> posts = new ArrayList<>();

    @Transient
    List<User> followers = new ArrayList<>();

    @Transient
    List<User>following = new ArrayList<>();

    @Column(name = "GENDER", nullable = false)
    private String gender;


    @Column(name = "ACTIVE")
    private  boolean active = Boolean.TRUE;

    private boolean loggedIn;

    private String timelinePhoto;



    /**
     * Instantiates a new User.
     */
    public User() {
    }



    public User(String firstName, String lastName, String email, String password, String access, String gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.access = access;
        this.gender = gender;
    }


    public User(String firstName, String lastName, String email, String password, String image, String access, String gender, List<Post> posts) {
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

    /**
     * Sets id.
     *
     * @param id the id
     */
    public void setId(long id) {
        this.id = id;
    }

    /**
     * Gets first name.
     *
     * @return the first name
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * Sets first name.
     *
     * @param firstName the first name
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * Gets last name.
     *
     * @return the last name
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * Sets last name.
     *
     * @param lastName the last name
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * Gets email.
     *
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * Sets email.
     *
     * @param email the email
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * Gets password.
     *
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * Sets password.
     *
     * @param password the password
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * Gets access.
     *
     * @return the access
     */
    public String getAccess() {
        return access;
    }

    /**
     * Sets access.
     *
     * @param access the access
     */
    public void setAccess(String access) {
        this.access = access;
    }

    /**
     * Gets gender.
     *
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * Sets gender.
     *
     * @param gender the gender
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * Is active boolean.
     *
     * @return the boolean
     */
    public boolean isActive() {
        return active;
    }

    /**
     * Sets active.
     *
     * @param active the active
     */
    public void setActive(boolean active) {
        this.active = active;
    }

    /**
     * Gets posts.
     *
     * @return the posts
     */
    public List<Post> getPosts() {
        return posts;
    }

    /**
     * Sets posts.
     *
     * @param posts the posts
     */
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

    public boolean isLoggedIn() {
        return loggedIn;
    }

    public void setLoggedIn(boolean loggedIn) {
        this.loggedIn = loggedIn;
    }

    public String getTimelinePhoto() {
        return timelinePhoto;
    }

    public void setTimelinePhoto(String timelinePhoto) {
        this.timelinePhoto = timelinePhoto;
    }
}

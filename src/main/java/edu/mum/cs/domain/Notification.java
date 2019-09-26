package edu.mum.cs.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;

@Entity
@Table(name = "NOTIFICATIONS")
public class Notification implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private long id;


    private String details;

    private LocalDateTime notTime = LocalDateTime.now();


    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "POST_ID")

    private Post post;

    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "USER_ID")
    private User user;

    public Notification() {
    }

    public Notification(Post post, User user) {
        this.post = post;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Override
    public String toString() {
        return "Notification{" +
                "id=" + id +
                ", post=" + post +
                ", user=" + user +
                '}';
    }
}

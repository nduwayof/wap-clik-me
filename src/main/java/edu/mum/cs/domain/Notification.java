package edu.mum.cs.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Notification implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @OneToOne
    private Post post;

    @OneToOne
    private User user;

    public Notification() {
    }

    public Notification(Post post, User user) {
        this.post = post;
        this.user = user;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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

    @Override
    public String toString() {
        return "Notification{" +
                "id=" + id +
                ", post=" + post +
                ", user=" + user +
                '}';
    }
}

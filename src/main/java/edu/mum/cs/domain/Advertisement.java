package edu.mum.cs.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "ADVERTISEMENTS")
public class Advertisement implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private long id;

    @Column(name = "TITLE", nullable = false)
    private String title;

    @Column(name = "COMPANY", nullable = false)
    private String company;

    @Column(name = "IMAGE", nullable = false)
    private String image;

    @Column(name =  "BLOCKED")
    private boolean blocked = Boolean.FALSE;

    public Advertisement() {
    }

    public Advertisement(String title, String company, String image) {
        this.title = title;
        this.company = company;
        this.image = image;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public boolean isBlocked() {
        return blocked;
    }

    public void setBlocked(boolean blocked) {
        this.blocked = blocked;
    }

    @Override
    public String toString() {
        return "Advertisement{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", company='" + company + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}


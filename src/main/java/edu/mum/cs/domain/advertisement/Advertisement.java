package edu.mum.cs.domain.advertisement;

import javax.persistence.Entity;
import java.io.Serializable;

@Entity(name="advertisement")
public class Advertisement implements Serializable {
    private long id;
    private String title;
    private Company companyAds;
    private String image;

    public Advertisement(String title, Company companyAds, String image) {
        this.title = title;
        this.companyAds = companyAds;
        this.image = image;
    }

    public Advertisement() {
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

    public Company getCompanyAds() {
        return companyAds;
    }

    public void setCompanyAds(Company companyAds) {
        this.companyAds = companyAds;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

}


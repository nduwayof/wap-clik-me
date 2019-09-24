package edu.mum.cs.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity(name = "notifications")
public class Notification implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @OneToOne
    private Post post;
    @OneToOne
    private User PostUser;
}

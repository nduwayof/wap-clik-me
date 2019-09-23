package edu.mum.cs.domain;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class Comment implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;
    @OneToOne
    Post post;
    @OneToOne
    User user;
}

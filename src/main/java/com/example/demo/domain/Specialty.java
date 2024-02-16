package com.example.demo.domain;

import lombok.Data;
import javax.persistence.*;

/**
 * Models a {@link Vet Vet's} specialty (for example, dentistry).
 */
@Data
@Entity
@Table(name = "specialties")
public class Specialty {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String name;
}

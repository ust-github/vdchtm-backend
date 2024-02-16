package com.example.demo.domain;

import lombok.Data;
import javax.persistence.*;

@Data
@Entity
@Table(name = "types")
public class PetType {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column
    private String name;
}

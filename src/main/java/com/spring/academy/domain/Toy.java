package com.spring.academy.domain;

import jakarta.persistence.*;

@Entity
@Table(name="tb_toy")
public class Toy {

    @Id
    @GeneratedValue
    @Column(name = "toy_id")
    Long id;

    @Column
    String name;

    @Column
    Double price;

    @ManyToOne
    @JoinColumn(name = "user_id")
    User owner;

    public Toy() {

    }

    public Toy(Long id, String name, Double price) {
        this.id = id;
        this.name = name;
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public User getOwner() {
        return owner;
    }

    public void setOwner(User owner) {
        this.owner = owner;
    }
}

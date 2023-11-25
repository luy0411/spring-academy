package com.spring.academy;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public record Toy(@Id Long id, String name, Double price) { }

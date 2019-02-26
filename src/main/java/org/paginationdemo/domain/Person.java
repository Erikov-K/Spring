package org.paginationdemo.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Person {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long personId;

    private String firstName;

    private String lastName;

    private int age;

    @Override
    public String toString() {
        return "Person [personId=" + personId + ", firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + "]";
    }
}

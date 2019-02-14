package ru.geekbrains.lesson1;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class HelloManOnceSay implements HelloMan {

    @Value("Yuri")
    private String name;

    public HelloManOnceSay() {
    }

    public HelloManOnceSay(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void helloSay() {
        System.out.println("Hello," + this.name);
    }
}

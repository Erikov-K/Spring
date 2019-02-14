package ru.geekbrains.lesson1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Hello {
    public static void main(String[] args) {

        /*
        // Spring Dependency Injection (first)
        ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
        HelloMan helloMan = context.getBean("helloMan", HelloMan.class);
        helloMan.helloSay();
        */

        // Spring Dependency Injection (second)
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        HelloMan helloMan = context.getBean("helloMan", HelloMan.class);
        helloMan.helloSay();
    }
}

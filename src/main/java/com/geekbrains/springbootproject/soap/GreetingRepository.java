package com.geekbrains.springbootproject.soap;

import com.geekbrains.springsoap.gen.Greeting;
import org.springframework.stereotype.Component;
import org.springframework.util.Assert;

import javax.xml.datatype.DatatypeConfigurationException;
import javax.xml.datatype.DatatypeFactory;
import java.util.GregorianCalendar;

@Component
public class GreetingRepository {
    public Greeting getGreeting(String name) throws DatatypeConfigurationException {
        Assert.notNull(name, "Имя не может быть пустым");
        Greeting greeting = new Greeting();
        greeting.setText(String.format("Привет, %s", name));
        greeting.setDate(DatatypeFactory.newInstance().newXMLGregorianCalendar(new GregorianCalendar()));
        return greeting;
    }
}



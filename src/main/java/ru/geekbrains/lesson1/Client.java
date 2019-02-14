package ru.geekbrains.lesson1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Client {
    public static void main(String[] args) {
        /*
        // First Implementation
        Camera camera = new Camera();
        camera.doPhotograph();
        */

        /*
        // Second Implementation
        Camera camera = new Camera(new CameraRoll());
        camera.doPhotograph();
        */

        /*
        // Third Implementation
        Camera camera = new Camera();
        // Color
        CameraRoll cameraRoll = new ColorCameraRoll();
        camera.setCameraRoll(cameraRoll);
        camera.doPhotograph();
        //BW
        cameraRoll = new BlackAndWhiteCameraRoll();
        camera.setCameraRoll(cameraRoll);
        camera.doPhotograph();
        */

        /*
        // Spring First Implementation
        ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
        Camera camera = context.getBean("camera", Camera.class);
        camera.doPhotograph();
        */

        // Spring Second Implementation
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);
        Camera camera = context.getBean("camera", Camera.class);
        camera.doPhotograph();
    }
}

package ru.geekbrains.lesson1;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {

    @Bean(name = "cameraRoll")
    public CameraRoll cameraRoll() {
        return new ColorCameraRoll();
    }

    @Bean(name = "camera")
    public Camera camera(CameraRoll cameraRoll) {
        Camera camera = new CameraImpl();
        camera.setCameraRoll(cameraRoll);
        return camera;
    }

    @Bean(name = "helloMan")
    public HelloMan helloMan(@Value("Yuri") String name) {
        HelloMan helloMan = new HelloManOnceSay(name);
        return helloMan;
    }
}
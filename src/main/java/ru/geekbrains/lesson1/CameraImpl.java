package ru.geekbrains.lesson1;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component("camera")
public class CameraImpl implements Camera {
    /*
    // First implementation
    // private CameraRoll cameraRoll;
    private CameraRoll cameraRoll = new CameraRoll();

    public void doPhotograph() {
        System.out.println("Щелк!");
        cameraRoll.processing();
    }
    */

    /*
    // Second Implementation
    private CameraRoll cameraRoll;

    public Camera(CameraRoll cameraRoll) {
        this.cameraRoll = cameraRoll;
    }

    public void doPhotograph() {
        System.out.println("Щелк!");
        cameraRoll.processing();
    }
    */

    // Third Implementation
    private CameraRoll cameraRoll;

    public CameraRoll getCameraRoll() {
        return cameraRoll;
    }

    @Autowired
    @Qualifier("cameraRoll")
    public void setCameraRoll(CameraRoll cameraRoll) {
        this.cameraRoll = cameraRoll;
    }

    public void doPhotograph() {
        System.out.println("Щелк!");
        cameraRoll.processing();
    }
}



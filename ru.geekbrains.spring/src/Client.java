import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Client {
    public static void main(String[] args) {
        /*
        CameraImpl cameraImpl = new CameraImpl();
        CameraRoll cameraRoll = new BlackAndWhiteCameraRoll();
        cameraImpl.setCameraRoll(cameraRoll);
        cameraImpl.doPhotograph();

        cameraImpl.setCameraRoll(new ColorCameraRoll());
        cameraImpl.doPhotograph();
        */

        ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
        Camera camera = context.getBean("camera",Camera.class );
        camera.doPhotograph();

    }
}
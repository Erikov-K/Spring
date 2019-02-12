public class CameraImpl {
    /*
    private CameraRoll cameraRoll;
    private CameraRoll cameraRoll = new CameraRoll();
    public void doPhotograph() {
        System.out.println("Щелк!");
        cameraRoll.processing();
    }
    */

    private CameraRoll cameraRoll;

    public CameraImpl() {

    }

    public CameraImpl(CameraRoll cameraRoll) {
        this.cameraRoll = cameraRoll;
    }

    public void doPhotograph() {
        System.out.println("Щелк!");
        cameraRoll.processing();
    }


    public CameraRoll getCameraRoll() {
        return cameraRoll;
    }

    public void setCameraRoll(CameraRoll cameraRoll) {
        this.cameraRoll = cameraRoll;
    }

}


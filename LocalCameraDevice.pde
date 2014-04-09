import java.lang.Thread;
import processing.video.*;

public class LocalCameraDevice extends AbstractDevice {

  String[] cameras = null;
  
  volatile boolean isRun = false; 
  
  Capture cam;
  public LocalCameraDevice(PApplet parent){
   super(parent);
   cameras = Capture.list();
  }
    
  
  @Override
  public void startCapture() {
   if(null != cameras && cameras.length > 0){
      cam = new Capture(this.mParent, cameras[0]);
      cam.start(); 
      isRun = true;
      new Thread(this).start();
   }
  }


  @Override
  public void stopCapture() {
    // TODO Auto-generated method stub
    isRun = false;
    cam.stop();

  }

 @Override
  public void run(){
    if(isRun){
       if (cam.available() == true) {
          cam.read();
       }
      }
    }
  }
 



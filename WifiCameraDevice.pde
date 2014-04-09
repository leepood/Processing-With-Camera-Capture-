public class WifiCameraDevice extends AbstractDevice {

  
  public WifiCameraDevice(PApplet parent,String cameraIp){
     super(parent);
  }
  
  
  @Override
  public void startCapture() {
    // TODO Auto-generated method stub
    System.out.print("This is Wifi Camera started");
    for(int i=0;i<10000;i++){
      if(this.dataListener != null){
        dataListener.onGetData(null);
      }
    }

  }


  @Override
  public void stopCapture() {
    // TODO Auto-generated method stub

  }

 @Override
  public void run(){
  
  }
}

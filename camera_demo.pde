CaptureController captureController;
WifiCameraDevice wifiCamera = null;
LocalCameraDevice localCamera = null;

void setup(){
  size(480,320);
  captureController = new CaptureController(this);
  wifiCamera = new WifiCameraDevice(this,"");
  localCamera = new LocalCameraDevice(this);
  captureController.setDevice(localCamera);
  captureController.startCapture();
}

/**
 *   on Receive a jpeg from device 
 *
 */
void onGetImage(Image frame){
  //
  System.out.println("get a frame");
}


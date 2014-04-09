import java.lang.reflect.Method;
import java.awt.Image;
public class CaptureController implements IImageData{

  private AbstractDevice mDevice = null;
  
  private PApplet mParent;
  
  private Method receiveImageMethod;
  
  public CaptureController(PApplet parent){
    mParent = parent;
    try{
      receiveImageMethod = parent.getClass().getMethod("onGetImage",new Class[]{Image.class});
    }
    catch(Exception ex){
      System.err.print("Invoke has not implemented \"onGetImage\" method ");
    }
  }

  public void setDevice(AbstractDevice device) {
    mDevice = device;
    mDevice.setOnDataListener(this);
  }

  public void startCapture() {
    if (null != mDevice) {
      mDevice.startCapture();
    }
  }
  
  public void onGetData(Image frame){
    if(null != receiveImageMethod){
      try{
        receiveImageMethod.invoke(mParent,frame);
      }
      catch(Exception ex){
        System.err.println("invoke onGetData Failed");
      }
    }
  }

  public void stopCapture() {
    if (null != mDevice) {
      mDevice.stopCapture();
    }
  }
}

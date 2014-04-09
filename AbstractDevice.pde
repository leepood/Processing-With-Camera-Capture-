import java.awt.Image;

public abstract class AbstractDevice implements Runnable{

  protected PApplet mParent;
  
  public AbstractDevice(PApplet parent){
    this.mParent = parent;
  }
  
  protected IImageData dataListener = null; 
  
  public abstract void startCapture();

  public void setOnDataListener(IImageData listener){
    dataListener = listener;
  }

  public abstract void stopCapture();
  
}

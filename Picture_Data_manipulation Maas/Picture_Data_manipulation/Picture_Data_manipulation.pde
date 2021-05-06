// Code adapted from; https://processing.org/reference/loadStrings_.html


//String[] lines = loadStrings("PF data.txt");
//println("there are " + lines.length + " lines");
//for (int i = 0 ; i < lines.length; i++) {
//  println(lines[i]);
//}

//https://forum.processing.org/two/discussion/11038/how-to-encode-an-image-into-base64-within-processing
import javax.xml.bind.DatatypeConverter;
 
void setup()
{
  String b64 = DatatypeConverter.printBase64Binary("pf low qualty".getBytes());
  println(b64);
  byte[] origB = DatatypeConverter.parseBase64Binary(b64);
  String orig = new String(origB);
  println(orig);
  
}



//New update 2

////https://discourse.processing.org/t/use-loadimage-with-base64-encoded-png/5897

//import java.awt.Image;
//import java.awt.Toolkit;
//import java.util.Base64;

//import processing.core.PImage;

//public class PAppletExt extends processing.core.PApplet {
//  private static final long serialVersionUID = 1L; // This is here to suppress an Eclipse warning.
  
//  public PImage loadBase64PNG(String base64Str) {
//    // Loads a PImage from a given base 64-encoded PNG image given as a string.
//    byte[] imageBytes = Base64.getDecoder().decode(base64Str);
//    Image awtImage = Toolkit.getDefaultToolkit().createImage(imageBytes);
//    return super.loadImageMT(awtImage);
//  }
//}
//}

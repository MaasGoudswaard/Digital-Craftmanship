// Code adapted from; https://processing.org/reference/loadStrings_.html


String[] lines = loadStrings("PF data.txt");
println("there are " + lines.length + " lines");
for (int i = 0; i < lines.length; i++) {
  println(lines[i]);
}

import java.awt.Image;
import java.awt.Toolkit;
import java.util.Base64;

import processing.core.PImage;

public class PAppletExt extends processing.core.PApplet {
  private static final long serialVersionUID = 1L; // This is here to suppress an Eclipse warning.
  
  public PImage loadBase64PNG(String base64Str) {
    // Loads a PImage from a given base 64-encoded PNG image given as a string.
    byte[] imageBytes = Base64.getDecoder().decode(base64Str);
    Image awtImage = Toolkit.getDefaultToolkit().createImage(imageBytes);
    return super.loadImageMT(awtImage);
  }
}

// Also adapted from; https://forum.processing.org/one/topic/how-to-load-a-single-character-at-a-time-from-words-in-a-txt-file.html

//println("there are " + lines.length + " lines");
//// use 'e' for 'elegy' for the integer variable in the for loop
//for (int e = 0; e < lines.length; e++)
//{
//  String[] words = split(lines[e], ' ');
//  for (int i = 0; i < words.length; i++)
//  {
//    for (int j = 0; j <words[i].length(); j++)
//    {
//      char let = words[i].charAt(j);
//      println(let);
//    }
//  }
//}

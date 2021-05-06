//String values[]; 
//void draw() {
//  loadPixels(); 
//  // Since we are going to access the image's pixels too  
//  img.loadPixels(); 
//  for (int y = 0; y < height; y++) {
//    for (int x = 0; x < width; x++) {
//      int loc = x + y*width;

//      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
//      float g = red(img.pixels[loc]);
//      float b = green(img.pixels[loc]);
//      float r = blue(img.pixels[loc]);

//      // Image Processing would go here
//      // If we were to change the RGB values, we would do it here, 
//      // before setting the pixel in the display window.
//      // Set the display pixel to the image pixel
//      float cumsum = (r*b/g);
//      if (r>250) {
//        strokeWeight(6);
//        stroke(0);
//        point(x,y);
        
//        //pixels[loc] =  color(cumsum);
//      } else {
//        pixels[loc] = color(g, b, r);
//      }
//    }
//  }
//  updatePixels();
//}

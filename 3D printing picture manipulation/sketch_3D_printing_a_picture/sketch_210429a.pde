//PImage img;
//void setup() {
//  size(1000,1000, P3D);
//  noLoop();

//  // Images must be in the "data" directory to load correctly
//  img = loadImage("trui1000.jpg");
//}

//void draw() {

////  loadPixels(); 
////  // Since we are going to access the image's pixels too  
////  img.loadPixels(); 
////  for (int y = 0; y < height; y++) {
////    for (int x = 0; x < width; x++) {
////      int loc = x + y*width;
      
////      // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
////      float r = green(img.pixels[loc]);
////      float g = blue(img.pixels[loc]);
////      float b = red(img.pixels[loc]);
      
////      // Image Processing would go here
////      // If we were to change the RGB values, we would do it here, 
////      // before setting the pixel in the display window.
      
////      // Set the display pixel to the image pixel
////      pixels[loc] =  color(r,g,b);          
////    }
////  }
////  updatePixels();
//}

//adapted from: https://processing.org/discourse/beta/num_1138567834.html

import processing.opengl.*;

int gap;
int num_lines;
float z_value;
PImage img;
float value;
color[] myarr;
boolean dosave=true;


void setup(){
size(1000, 1000, OPENGL);
background(0);
strokeWeight(0.2);

noLoop();

gap = 8;
z_value = 50;
num_lines = floor(height/gap);


PImage img = loadImage("trui1000.jpg");// black and white image with a blur for  smooth warping lines
image(img,0,0);
loadPixels();

myarr= new color[pixels.length];

for (int i=0; i <(width*height) -1; i++){
float brg = brightness(pixels[i]);
myarr[i] = abs ((int) brg);
}
}

void draw(){
background(0);
stroke(255);
strokeWeight(1);
fill(0);
smooth();
pushMatrix();

translate(width/2, height/2);

rotateX(PI/6);
rotateZ(0);

scale(1);
translate(-width/2,-height/2);

for (int i=0; i < num_lines; i++){
beginShape();
for ( int j=0; j < width; j++){ // x resolution

value = map (myarr[i*gap*width+j],0, 255, 0, z_value);
vertex(j, i*gap, value);

}
endShape();

}
}

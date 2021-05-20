PImage img;
int cellsize = 1; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system
byte lines[];

PrintWriter output;
int layer = 0;
float y = 0;
float x = 0;
float z = 0;
float e = 0.03326;
float E = 0;
float nozzle = 0.4;
float layerheight = 0.2;

float startx = 35;
float starty = 35;
float startz = 0;
int zcount = 0;

int layerhigh = 131;   //uneven is better
int layerwide = 7;   //uneven is better
float heightpart;
float widthpart;

boolean shorttile;
boolean longtile;

void setup() {
  // Images must be in the "data" directory to load correctly
  img = loadImage("pf 100100.JPG");

  cols = width/cellsize;             // Calculate # of columns
  rows = height/cellsize;            // Calculate # of rows
  background(0);
  lines = loadBytes("PF data.txt");
  println("there are " + lines.length + " lines");
  output = createWriter("rawcode.txt");
  size(100, 100);
  y = starty;
  x = startx;
  z = layerheight;
  output.print("G0");   
  output.print(" X");   
  output.print(startx); 
  output.print(" Y");   
  output.print(starty); 
  output.print(" Z");   
  output.println(z);
}


void draw() {
  loadPixels(); 
  // Since we are going to access the image's pixels too  
  img.loadPixels(); 
  for (int zcount = 1; zcount<100; zcount++) {
    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        int loc = x + y*width;

        // The functions red(), green(), and blue() pull out the 3 color components from a pixel.
        float g = red(img.pixels[loc]);
        float b = green(img.pixels[loc]);
        float r = blue(img.pixels[loc]);

        // Image Processing would go here
        // If we were to change the RGB values, we would do it here, 
        // before setting the pixel in the display window.
        // Set the display pixel to the image pixel
        float cumsum = ((r+g+b)/(3*7));
        if (cumsum > zcount) {
          output.print("G0");
          output.print(" X"); 
          output.print(x*0.5); 
          output.print(" Y"); 
          output.print(y*0.5);
          output.print(" Z"); 
          output.println(zcount*layerheight);
          output.print("G1");
          output.print(" E");
          output.println(e+3);
          output.print("G1");
          output.print(" E");
          output.println(-3);
          pixels[loc] = color(cumsum*10);
        }
      }
      updatePixels();
    }
  }
  noLoop();
}

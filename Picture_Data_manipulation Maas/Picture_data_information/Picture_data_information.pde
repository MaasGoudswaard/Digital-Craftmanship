PImage img;
int cellsize = 10; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system
byte lines[];

void setup() {
  // Images must be in the "data" directory to load correctly
  img = loadImage("pf 10001000.JPG");
  size(1000, 1000, P3D); 
  cols = width/cellsize;             // Calculate # of columns
  rows = height/cellsize;            // Calculate # of rows
  background(0);
  lines = loadBytes("PF data.txt");
  println("there are " + lines.length + " lines");
}

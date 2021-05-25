PImage img;
int cellsize = 10; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system
byte lines[];
byte pd[];
int pdm;
int i;

void setup() {
  // Images must be in the "data" directory to load correctly
  img = loadImage("pf 500500.JPG");
  pd= loadBytes("pf 500500.JPG");
  size(500, 500, P3D); 
  cols = width/cellsize;             // Calculate # of columns
  rows = height/cellsize;            // Calculate # of rows
  background(0);
  lines = loadBytes("PF data.txt");
  println("there are " + lines.length + " lines");

  for (int i = 0; i < pd.length; i++) { 
    // Every tenth number, start a new line 
    // bytes are from -128 to 127, this converts to 0 to 255 
    

  }
}

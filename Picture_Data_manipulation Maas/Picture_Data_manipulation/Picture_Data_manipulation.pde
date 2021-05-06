// Code adapted from; https://processing.org/reference/loadStrings_.html


//String lines;
byte lines[];

void setup() {
  size(500, 500);
  //  lines = loadStrings("PF data.txt");
  lines = loadBytes("PF data.txt");
  println("there are " + lines.length + " lines");
}

void draw() {
  for (int i = 0; i < lines.length; i++) {
//    println(lines[i]);
  }
  //  lines.charAt();

}

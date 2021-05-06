// Code adapted from; https://processing.org/reference/loadStrings_.html


String[] lines = loadStrings("PF data.txt");
println("there are " + lines.length + " lines");
for (int i = 0 ; i < lines.length; i++) {
  println(lines[i]);
}

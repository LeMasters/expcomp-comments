// quick demo code regarding other approaches to pattern.
// glemasters
// exp comp georgetown cct 2017

// what matters herein?  See how I use alpha from noise;
// also, how xy becomes also yx; how both are flipped
// upside down as well (width-x, height-y) in order
// to create a chunky quatrefoil.


int boxSize;

void setup() {
  size(400, 400);
  noStroke();
  boxSize=16;
  frameRate(6);
}
// 400 pixels, 16 pixel side, 25 squares/row/col = 625.
// draw squares on horizontal lines
void draw() {
  background(255);
  int z = frameCount;
  color bb = color(0, 0, 0);
  color rc = color(255, 50, 40);
  color cb = color(#FFCC33);
  for (int x = 0; x < width; x+=boxSize) {
    for (int y = 0; y < height; y+=boxSize) {
      overlay(x, y, z, cb);
      overlay(x, y, z+1, rc);
      overlay(x, y, z+5, bb);
    }
  }
}

void overlay(int x, int y, int z, color c) {
  int n = round(noise(x * 0.0034, y * 0.0034, z * 0.03)) * 255;
  // use n as the alpha -- 0 = transparent, 255 = full-on visible

  fill(c, n);
  rect(x, y, boxSize, boxSize);
  rect(y, x, boxSize, boxSize);
  rect(width-x, height-y, boxSize, boxSize);
  rect(height-y, width-x, boxSize, boxSize);
}
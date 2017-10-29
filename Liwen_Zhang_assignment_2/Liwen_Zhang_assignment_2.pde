// "pattern", squares
//Liwen Zhang

// OK -- this is a fine start, but help me understand what I'm
// seeing and what your strategy is.  This is a pattern, for example,
// in only the barest sense:  While the grid is very repetitive, these
// completely random numbers throw everything into chaos, and makes
// it (nearly) impossible to find pattern.

// Having said that, we can generate some patterns in that space without
// too much trouble.  For example, using simple maths:
//
// 1.  In a large block full of smaller blocks, where the blocks
// are numbered, beginning top lefthand block, starting with 1;
// 1a. Divisible by 2? 3? 5?  (RGB, YES=255, NO = 0)
//
// Also -- you certainly can leave the code outside of
// a setup() or draw() function, but things are much
// easier later if you start by putting those
// functions in place.


//set basic statistics
int col;
void setup() {
  size(400, 400);
  noStroke();
}
// 400 pixels, 20 pixel side, 20 squares/row/col = 400.
// draw squares on horizontal lines
void draw() {
  float z = 1;
  // for an animated pattern, remove the
  // commenting bars from the next line:
  z = frameCount;
  for (int x = 0; x < width; x+=20) {
    //draw squares on vertical lines
    for (int y = 0; y < height; y+=20) {
      //paint the squares
      // col=color(random(255),random(255),random(255),127);
      int total = (y*20) + x; // which block are we on?

      // instead of random, let's use perlin noise
      // we'll link it to the x,y of your grid
      // noise() always returns a positive number
      // between 0 and 1.

      // stick with black and white for the nonce.
      // To make it easy, just round n (below)
      // and multiply by 255.
      float n;
      n = noise(x * 0.009, y * 0.009, z * 0.009);
      float n2;
      n2 = round(n);
      float n3;
      n3 = n2 * 255;

      // NB we could shorten this drastically:
      // 
      // float n = round(noise(x * 0.01, y * 0.01)) * 255;

      fill(n3);
      rect(x, y, 20, 20);
      // want more pattern?  Let's try symmetry
      // uncomment these lines (and if you
      // want, remove corresponding ones above -- but
      // you don't need to do so).

      // Look at tartan.pde in the expcomp-comments
      // directory for further experimentation on this
      // idea.

      /*
      n = round(noise(x * 0.009, y * 0.009, z * 0.009)) * 255;
       if (n==0) {
       fill(0);
       } else {
       fill(255);
       }
       rect(x, y, 20, 20);
       rect(y, x, 20, 20);
       rect(y, y, 20, 20);
       rect(x, x, 20, 20);
       */
    }
  }
}
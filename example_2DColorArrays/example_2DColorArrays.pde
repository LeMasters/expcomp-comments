// simple example code illustrates
// how to hold onto randomized values
// (in this case, color) using a 2D array.

color[][] eye;
void setup() {
  size(500, 500);
  frameRate(5);
  
  // need to initialize my array -- 
  // I tell Processing that it will be 20x20
  eye = new color[20][20];
  
  // now iterate through that array
  for (int i=0; i<20; i++) {
    for (int j=0; j<20; j++) {
      // this color shifts with i and j --
      // the effect is like a simple color chart.
      eye[i][j] = color(i*10, j*10, 255-(i*10));
      
      // again, though, here's the thing about
      // doing it this way:  I can hold ontol
      // those values.  They won't have to 
      // change with every loop of draw();
    }
  }
}

void draw() {
  background(0);
  for (int i=0; i<20; i++) {
    for (int j=0; j<20; j++) {
      // recall old values from storage...
      fill(eye[i][j]);
      rect(i*25, j*25, 25, 25);
    }
  }
  // with each loop, I do pick 1 square to
  // recolor -- but that is to show that
  // the other squares are not being
  // changed.
  int i=int(random(20));
  int j = int(random(20));
  eye[i][j] = color(255,50,50);
}
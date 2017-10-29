// Della Notonagoro
// LeMasters Fall 2017 ExpComp
// The Martian Poster

// int total = 199; // want 200 stars total
float rate = 8;
float margin, w, h;
float StarSize, MarsDia, MarsY, MarsX;

void setup () {
  size(500, 700);
  background(0);
  noStroke();
  frameRate(rate); //slow down the stars?
  w = 500;
  h = 600;
  margin = 100;
  StarSize = 1;
  MarsDia = 350;
  MarsX = width/2;
  MarsY = 300;
}

void draw () {
  PFont myFont;
  myFont = createFont("Open sans - Bold", 30);
  textFont(myFont);
  fill(#983219);
  text("THE MARTIAN", 150, 670);

  fill(#FFFFFF); // draw the stars
  ellipse(random(500), random(700), StarSize, StarSize);

  fill(#983219); // draw mars
  ellipse(MarsX, MarsY, MarsDia, MarsDia);

  fill(#BF5A26, 80);
  //arc(width*0.5, height*0.5, MarsDia, MarsDia, radians(25), radians(180));
  
  // details on mars
  // bezier(x1, y1, cpx1, cpy1, cpx2, cpy2, x2, y2);
  bezier(76, 322, 130, 360, 186, 374, 190, 355);
  bezier(133, 400, 155, 412, 234, 412, 255, 402);
  bezier(416, 347, 401, 366, 352, 375, 309, 367);
  
  fill(#E0A15A, 80);
  bezier(148, 439, 168, 470, 270, 470, 287, 446);
}
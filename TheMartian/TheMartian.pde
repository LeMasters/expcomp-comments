// Della Notonagoro
// LeMasters Fall 2017 ExpComp
// The Martian Poster

// We've already talked about this in class, but
// it bears repeating -- this is a fun poster,
// and it is well done.

// I do think that the text gets lost at the bottom.
// The sheer weight of the giant orange blob in the 
// middle will not let the viewer see that title
// accidentally -- she has to WANT to see it first.
//
// How to fix?  Hmmm.  Maybe a heavier typeface (a slab)
// that is just a little higher on the page.  Maybe
// put the title in WHITE, or in SILVER (e.g., reflective
// silver foil, not just grey ink).  I'd have to 
// experiment with those until I knew if it worked or not,
// though, so your guess is as good as mine.

// It could be, for example, that a slightly lighter
// black (a deep grey) on a black field, using slab
// letters, would look good.  Or it might get lost, too.

// Oh, last note:  This is a good candidate for
// rich blacks instead of pure black.

// I did make some changes to your code below, but it
// really doesn't add anything to what you'd already built.
// In fact, I think part of the charm of yours is that it
// is agressively un-ornamented.  It "feels" like an
// alien style, and I think that works really well.

// int total = 199; // want 200 stars total
float rate = 8;
float margin, w, h;
float StarSize, MarsDia, MarsY, MarsX;

void setup () {
  size(500, 700,FX2D);
  background(24,13,19);
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
  fill(#FFFFFF);
  text("THE MARTIAN", 150, 670);

  fill(#FFFFFF); // draw the stars
  ellipse(random(500), random(700), StarSize, StarSize);


  fill(255,4);
  ellipse(MarsX, MarsY, MarsDia+18, MarsDia+18);
  fill(220,58,44,8);
  ellipse(MarsX, MarsY, MarsDia+14, MarsDia+14);
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
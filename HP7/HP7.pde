// Identify the purpose of this code;
// Identify yourself; tell us anything
// we need to know in order to run it.
// -- Weiqiang Yao Sept 24 2017

void setup() {
  // is this the default size you're using,
  // or do you intend to make things square?
  size(500, 500);
  
  // NB that we discussed Rich Black -- especially
  // in the case of an all-black background,
  // you'll want to use rich black.
  
  background(0);
  noLoop();
  
  // It is fine to use this as a local variable
  // but note that the way things are spread
  // out is a bit odd, and could limit your
  // flexibility in the future.  Often best
  // to use setup() exclusively, or put most
  // stuff into draw().  Again, though, this 
  // works just fine in this case.
  
  PFont myFont;
  
  // This doesn't work on my system for several
  // reasons:  1., I don't have this typeface;
  // 2., You refer to it incorrectly.  It is
  // hard to tell because it gives you the default
  // typeface instead of an error...
  
  // Look for my simple font catalog on
  // our Github repository
  
  myFont = createFont("AngsanaUPC Italic",100);
  textFont(myFont);
  
  // This works, but the question is, why make it
  // partially transparent white instead of 
  // solid gray?  If you output to another format,
  // it may give you trouble later.
  fill(255,100);
  
  // Again, hard to know because the font is
  // not working at the moment, but it may be
  // more interesting, for example, to collapse
  // the stem of the P into the right stem of the
  // H.  In typography, this is called a "ligature."
  // It used to be common in the 17th, 18th C.
  // So it looks "old fashioned."  The most common
  // ligatures were A and E, T and h, s and s, etc.
  
  // to improve likelihood of center, do thus:
  textAlign(CENTER);
  text("HP",250,480);
}

void draw(){
  
  // This is perfectly reasonable.  It would
  // improve with the addition of comments,
  // so that others could find the appropriate
  // line of code, for example.
  
  noFill();
  stroke(255);
  strokeWeight(7);
  ellipse(250,250,200,200);
  
  triangle(250-sqrt(3)*100,350,250+sqrt(3)*100,350,250,50);
  
  line(250,50,250,350);
}
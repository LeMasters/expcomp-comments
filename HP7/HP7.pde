void setup() {
  size(500, 500);
  background(0);
  noLoop();
  
  PFont myFont;
  myFont = createFont("AngsanaUPC-Italic",100);
  textFont(myFont);
  fill(255,100);
  text("HP",200,480);
}

void draw(){
  noFill();
  stroke(255);
  strokeWeight(7);
  ellipse(250,250,200,200);
  
  triangle(250-sqrt(3)*100,350,250+sqrt(3)*100,350,250,50);
  
  line(250,50,250,350);
}
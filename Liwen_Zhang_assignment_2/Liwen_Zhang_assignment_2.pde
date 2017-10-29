// "pattern", squares
//Liwen Zhang

//set basic statistics
int col;

size(200, 200);
noStroke();

// draw squares on horizontal lines
for (int x = 0; x < width; x+=10) {
  //draw squares on vertical lines
  for (int y = 0; y < height; y+=10) {
   
//paint the squares
    col=color(random(255),random(255),random(255),127);
    fill(col);
    
    rect(x, y, 10, 10);
  }
} 
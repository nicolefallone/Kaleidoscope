
float minRadius = 50;
float gridSize2 = 150;

void geometric() {
  for(int i=0; i < width; i+= gridSize2){ //x
    for(int j=0; j < height; j+= gridSize2) { //y
      pushMatrix();
      translate(i,j);
      drawShape(0,0,brightness);
      fill(r,g,b);
      popMatrix();
    }
   }
 }


void drawShape(float x, float y, float r) {
  rect(x,y,r,r);
  r*=0.6;
  
  if(r > minRadius) {
    drawShape(x+r/2,y,r);
    drawShape(x,y+r/2,r);
    drawShape(x-r/2,y,r);
    drawShape(x,y-r/2,r);
  }
  
}

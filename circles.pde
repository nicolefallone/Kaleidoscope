

float x,y;
float radius;
float angle;
float gridSize = 80;

void circles() {
  
  ellipseMode(CENTER);
  setStart(0, 0);

  for(int i=0; i < width; i+= gridSize){ //x
    for(int j=0; j < height; j+= gridSize) { //y
  //1
  pushMatrix();
    translate(i,j-30); //i-80,j-100
    //translate(width / 2, height / 2);
    angle += 0.8;
    radius -= 0.3;
    if(radius < 0)
        radius = 0;
     if (brightness > 127) {
    x = sin(angle) * radius/2; //to rotate counterclockwise switch sin and cos
    y = cos(angle) * radius/2;
     }
     else {
       x = cos(angle) * radius/2; //to rotate counterclockwise switch sin and cos
       y = sin(angle) * radius/2;
     }
      fill(r*4,g*4,b*4,100); //173,216,230,100
      ellipse(i, j, brightness, brightness);
     popMatrix();
    }
  }
}

void setStart(int x, int y) {
    angle = atan2(x - width / 2, y - height / 2);
    radius = dist(width / 3, height / 3, x, y);
    this.x = x;
    this.y = y;
}

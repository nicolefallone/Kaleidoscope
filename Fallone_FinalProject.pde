import processing.serial.*;

Serial arduino;
float brightness;
int red,r,green,g,blue,b;

void setup() {
  background(255);
  fullScreen();
  noCursor();
  
  String[] ports = Serial.list();
  arduino = new Serial(this,ports[7],9600);
}

void draw() {
    
    if(arduino.available() > 0) {
      String message = arduino.readStringUntil('\n');
      if(message != null) {
  
        String[] tokens = split(message, ',');
        println(message);
        
        if(tokens.length >= 5) {
        brightness = float(tokens[0]);
        
        red = int(tokens[1]);
        r = (int)map(red,0,65535,0,255);
             
        green = int(tokens[2]);
        g = (int)map(green,0,65535,0,255);
    
        blue = int(tokens[3]);
        b = (int)map(blue,0,65535,0,255);
        
      }
      println(tokens.length + " Brightness: " + brightness + " R: " + r + " G: " + g + " B: " + b);
    }
  }

    if(key == '1') {
      circles();
    }
    else if(key == '2') {
    geometric();
    }
    else{
      circles();
    }
  }
  

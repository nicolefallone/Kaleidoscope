#include <Wire.h>
#include <SparkFunISL29125.h>

SFE_ISL29125 RGB_sensor;
int sensorPin = A0;   // photocell

void setup() {
 Serial.begin(9600);

  // Initialize the ISL29125 with simple configuration so it starts sampling
  if (RGB_sensor.init())
  {
    Serial.println("Sensor Initialization Successful\n\r");
  }

}

void loop() {

  //photocell
  int brightness = analogRead(sensorPin);

  // convert the input range (0-1023) to PWM range (0-255)
  brightness = map(brightness, 0,1023, 0,255);
  brightness = constrain(brightness, 0,255);


  //rgb sensor
  // Read sensor values (16 bit integers)
  unsigned int red = RGB_sensor.readRed();
  unsigned int green = RGB_sensor.readGreen();
  unsigned int blue = RGB_sensor.readBlue();

  // set the LED's brightness
  Serial.print(brightness);
  Serial.print(",");

  Serial.print(red);
  Serial.print(",");
  Serial.print(green);
  Serial.print(",");
  Serial.print(blue);
  Serial.println(",");

  //delay(100);
  

}

#include <Servo.h>

// Servo object create
Servo myservo;

// Digital PWM pin
int servoPin = 9;

void setup() {
  // attach servo to digital pin 9
  myservo.attach(servoPin);
}

void loop() {

  // rotate in one direction
  myservo.write(0);
  delay(2000);

  // stop position (depends on servo calibration)
  myservo.write(90);
  delay(1000);

  // rotate opposite direction
  myservo.write(180);
  delay(2000);

  // stop again
  myservo.write(90);
  delay(1000);
}

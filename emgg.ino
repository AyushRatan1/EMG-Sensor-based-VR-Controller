#include <Servo.h>

Servo myservo;
int emgPin= A0;
int emgValue=0;
int servoPin=9;
void setup() {
  // put your setup code here, to run once:
myservo.attach(servoPin);
Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
emgValue=analogRead(emgPin);
int servoPos=map(emgValue,0,1023,0,180);
myservo.write(servoPos);
Serial.println(emgValue);
delay(100);
}

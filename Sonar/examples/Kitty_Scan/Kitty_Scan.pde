/*

This arduino program will beep if an object comes within `sonarObstructionDistance`
centimeters of the ultrasonic rangefinder. It was used to keep a cat out of a crib.

*/

#include <Ultrasound.h>

// Set Pins
int pinSpeaker = 10;
int pinSonar = 7;
int pinObstructionIndicator = 13;

// Distance an object must be to consider it an obstacle (CM)
// ~22 inches
int sonarObstructionDistance = 56;

Ultrasound sonar(pinSonar);

void setup()
{
  // Set pins to output
  pinMode(pinObstructionIndicator, OUTPUT);

  // Serial is just for debugging
  Serial.begin(9600);
}

void loop()
{
  int cm = sonar.read();

  if(cm <= sonarObstructionDistance) {
    Serial.print("Distance: ");
    Serial.print(cm);
    Serial.println("CM");

    digitalWrite(pinObstructionIndicator, HIGH);

    // http://arduino.cc/en/Reference/Tone
    // Play sound
    tone(1000, 500);
  } else {
    digitalWrite(pinObstructionIndicator, LOW);
  }
}


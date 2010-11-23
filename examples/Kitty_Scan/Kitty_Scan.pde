#include <Ultrasound.h>

// Set Pins
int pinSpeaker = 10;
int pinSonar = 7;
int pinObstructionIndicator = 13;

// Distance an object must be to consider it an obstacle (M)
double sonarObstructionDistance = .56;

Ultrasound sonar(pinSonar);

void setup()
{
  // Set pins to output
  pinMode(pinObstructionIndicator, OUTPUT);
  Serial.begin(9600);
}

void loop()
{
  double distance = sonar.read();
  if(distance <= sonarObstructionDistance) {
    Serial.println(distance);
    digitalWrite(pinObstructionIndicator, HIGH);
    playTone(1000, 500);
  } else {
    digitalWrite(pinObstructionIndicator,LOW);
  }
}

void playTone(long duration, int freq) {
    duration *= 1000;
    int period = (1.0 / freq) * 1000000;
    long elapsed_time = 0;
    pinMode(pinSpeaker, OUTPUT);
    while (elapsed_time < duration) {
        digitalWrite(pinSpeaker,HIGH);
        delayMicroseconds(period / 2);
        digitalWrite(pinSpeaker, LOW);
        delayMicroseconds(period / 2);
        elapsed_time += (period);
    }
    pinMode(pinSpeaker, INPUT);
}

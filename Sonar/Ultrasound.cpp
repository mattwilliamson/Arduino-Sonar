/*
 Ultrasound.h
 Reads distance from an ultrasound sensor
*/

#include <Ultrasound.h>

Ultrasound::Ultrasound(int pin)
{
	pinMode(pin, OUTPUT);
	_pin = pin;
}

int Ultrasound::read()
{
	// Send Read Impulse
	pinMode(_pin, OUTPUT);
	digitalWrite(_pin, LOW);
	delayMicroseconds(2);
	digitalWrite(_pin, HIGH);
	delayMicroseconds(5);
	digitalWrite(_pin, LOW);
	
	// Read input impulse
	pinMode(_pin, INPUT);
	long microseconds = pulseIn(_pin, HIGH, 20000);
	
	// Only half the distance is receiving
	// half is transmitting
	microseconds /= 2;
	float meters = microseconds / SPEED_OF_SOUND / 100.0;
	
	meters = meters == 0 ? 3 : meters;
	
	return meters * 100;
}

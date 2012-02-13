#ifndef Ultrasound_h
#define Ultrasound_h

#if defined(ARDUINO) && ARDUINO >= 100
  #include "Arduino.h"
#else
  #include "WProgram.h"
  #include <pins_arduino.h>
#endif

// CM/S
#define SPEED_OF_SOUND 29.0
// 343 M/S

class Ultrasound {
public:
    Ultrasound(int pin);
    int read();
private:
    int _pin;
};

#endif

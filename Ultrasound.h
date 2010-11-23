#ifndef Ultrasound_h
#define Ultrasound_h

#include "WProgram.h"

// CM/S
#define SPEED_OF_SOUND 29.0
// 343 M/S

class Ultrasound {
public:
    Ultrasound(int pin);
    float read();
private:
    int _pin;
};

#endif

# Arduino Sonar

This is a simple library for the [Arduino](http://www.amazon.com/gp/product/B0044MVM9I?ie=UTF8&tag=appdelinc-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=B0044MVM9I) platform to read distance measurements from devices such as the [Parallax Ping)) Ultrasonic Rangefinder](http://www.google.com/search?q=parallax+ping&tbs=shop:1). I bought a knockoff from [Futurlec](http://www.futurlec.com/Distance_Sensors.shtml) but it took forever to get here from China through customs.

## Installation

Copy the whole Arduino-Sonar folder into to your *Documents/Arduino/libraries* folder.

## Usage

Using the library is dead simple:

    #include <Ultrasound.h>
    int pinSonar = 7;
    Ultrasound sonar(pinSonar);
    double distanceMeters = sonar.read();


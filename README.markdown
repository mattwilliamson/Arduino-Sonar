# Arduino Sonar

This is a simple library for the [Arduino](http://www.amazon.com/gp/product/B0044MVM9I?ie=UTF8&tag=appdelinc-20&linkCode=as2&camp=1789&creative=9325&creativeASIN=B0044MVM9I) platform to read distance measurements from devices such as the [Parallax Ping)) Ultrasonic Rangefinder](http://www.google.com/search?q=parallax+ping&tbs=shop:1). I bought a knockoff from [Futurlec](http://www.futurlec.com/Distance_Sensors.shtml) but it took about a month to get here from China through customs.

## Circuit

![Circuit](https://github.com/mattwilliamson/Arduino-Sonar/raw/master/Circuit.png)

## Action Shot

![Action Shot](https://github.com/mattwilliamson/Arduino-Sonar/raw/master/Action.png)

## Installation

Copy the whole `Sonar` folder into to your `Documents/Arduino/libraries` folder.

There are more detailed directions in the [Arduino docs](http://www.arduino.cc/en/Hacking/Libraries)

## Usage

Using the library is dead simple:

    #include <Ultrasound.h>
    int pinSonar = 7;
    Ultrasound sonar(pinSonar);
    double distanceMeters = sonar.read();

## Video

http://www.youtube.com/watch?v=tps1cN1xQcc

<object width="425" height="344"><param name="movie" value="http://www.youtube.com/v/tps1cN1xQcc?hl=en&fs=1"></param><param name="allowFullScreen" value="true"></param><param name="allowscriptaccess" value="always"></param><embed src="http://www.youtube.com/v/tps1cN1xQcc?hl=en&fs=1" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="344"></embed></object>
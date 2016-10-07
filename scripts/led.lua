package.path=";lua/?.lua;lua/?/?.lua;"..package.path
package.cpath=";lib/?.dll;lib/?.so;"..package.cpath

require("wiringPi")

print(arg[1])

led = tonumber(arg[1])

wiringPiSetupGpio()

pinMode(led, OUTPUT) 

digitalWrite(led, HIGH) 
delay (250)
digitalWrite(led, LOW)


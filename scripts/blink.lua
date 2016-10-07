-- Blinks led on P0 / pin16
-- Exits after 10 blinks

package.path=";lua/?.lua;lua/?/?.lua;"..package.path
package.cpath=";lib/?.dll;lib/?.so;"..package.cpath

require("wiringPi")

pin = 1

wiringPiSetup()
pinMode(pin, OUTPUT) 

for i=1,10 do
    digitalWrite(pin, HIGH) delay (250)
    digitalWrite(pin, LOW) delay (250)
end


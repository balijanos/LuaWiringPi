-- Blinks 4 leds (GPIO numbering)
-- Exits after 10 blinks

package.path=";lua/?.lua;lua/?/?.lua;"..package.path
package.cpath=";lib/?.dll;lib/?.so;"..package.cpath

require("wiringPi")

pins = {17,18,23,24}

wiringPiSetupGpio()

for k,v in pairs(pins) do
   pinMode(v, OUTPUT) 
end

for i=1,10 do
  for k,v in pairs(pins) do
    digitalWrite(v, HIGH) delay (100)
    digitalWrite(v, LOW) delay (100)
  end
end

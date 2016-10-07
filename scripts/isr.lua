
package.path=";lua/?.lua;lua/?/?.lua;"..package.path
package.cpath=";lib/?.dll;lib/?.so;"..package.cpath

require("wiringPi")

button1 = 24
led1 = 23
button2 = 18
led2 = 17

wiringPiSetupGpio()

pinMode(button1, INPUT)
pinMode(led1, OUTPUT)
pinMode(button2, INPUT)
pinMode(led2, OUTPUT)

digitalWrite(led1,LOW)  
digitalWrite(led2,LOW)  

digitalWrite(led1,HIGH)

done = nil

function cb2()
  digitalWrite(led2,LOW)  
  done = true
end
function cb1()
  digitalWrite(led1,LOW)  
  digitalWrite(led2,HIGH)
  wiringPiISR(button2,INT_EDGE_FALLING,cb2)
end

wiringPiISR(button1,INT_EDGE_FALLING,cb1)


while (not done) do
	
end



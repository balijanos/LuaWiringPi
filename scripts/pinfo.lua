#!/usr/bin/lua

package.path=";lua/?.lua;lua/?/?.lua;"..package.path
package.cpath=";lib/?.dll;lib/?.so;"..package.cpath

function trim(s) local from = s:match"^%s*()" return from > #s and "" or s:match(".*%S", from) end

require("wiringPi")

model, rev, mem, maker, overVolted = piBoardId()

wiringPiSetupPhys()

type = "  "
if (model == PI_MODEL_B) then
    if (rev == PI_VERSION_2 ) then
      type = "B2"
    else
      type = "B1"
    end
end

print ("MODEL: "..PI_ModelNames[model+1].." ".. type)
print ("REVISION: "..PI_RevisionNames[rev+1])
print ("MEMORY: "..PI_MemorySize[mem+1].." MB")

print ("+-----+--------------+-------+-------+-------+-------+")
print ("| PIN | Name         | BCM   | wPi   | Mode  | Value |")
print ("+-----+--------------+-------+-------+-------+-------+")

function printPinInfo(pin)
	Physical,BCM,wPi,Name,Mode,Value = pinInfo(pin)
	if BCM == -1 then
	   print("  "..Physical,trim(Name))
	else
	   print("  "..Physical,trim(Name),"",BCM,wPi,Mode,Value)
	end
end

if ((model == PI_MODEL_A) or (model == PI_MODEL_B)) then	
	for pin = 1,26 do
		printPinInfo(pin)
	end
	if (rev == PI_VERSION_2) then -- B version 2
		print ("+-----+--------------+-------+-------+-------+-------+")
		for pin = 51,54 do
			printPinInfo(pin)
		end
	end
elseif ((model == PI_MODEL_BP) or (model == PI_MODEL_AP) or (model == PI_MODEL_2) or (model == PI_MODEL_3) or (model == PI_MODEL_ZERO)) then
    for pin = 1,40 do
       printPinInfo(pin) 
    end 
elseif (model == PI_MODEL_CM) then
    print ("Not supported model: " .. model) ;
else
    print ("Oops - unable to determine board type... model: " .. model) ;
end

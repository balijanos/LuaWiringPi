# LuaWiringPi
Lua interface for wiringPi library

Prerequisites
-------------
  wiringPi
  
    http://wiringpi.com/download-and-install/
    
  lua 5.2
  
    sudo apt-get install lua5.2 liblua5.2-dev
    
Build
-----

    make
   
Install
-------
  create 'wiringPi' directory in your lua library.
  
  copy core.so and wiringPi.lua to this folder.
  
Implemented methods
-------------------
  - wiringPiSetup
  - wiringPiSetupGpio
  - wiringPiSetupPhys
  - wiringPiSetupSys
  - pinMode
  - pullUpDnControl
  - digitalWrite
  - digitalRead
  - digitalWriteByte
  - digitalReadByte
  - pwmSetMode
  - pwmSetRange
  - pwmSetClock
  - piBoardRev
  - wpiPinToGpio
  - physPinToGpio
  - millis
  - micros
  - delay
  - delayMicroseconds
  - wiringPiI2CSetup
  - wiringPiI2CSetupInterface
  - wiringPiI2CRead
  - wiringPiI2CWrite
  - wiringPiI2CWriteReg8
  - wiringPiI2CWriteReg16
  - wiringPiI2CReadReg8
  - wiringPiI2CReadReg16
  - shiftIn
  - shiftOut
  - softPwmCreate
  - softPwmWrite
  - wiringPiISR

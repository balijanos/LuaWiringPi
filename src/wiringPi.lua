-------------------------
-- wiringPi Lua interface
-------------------------
-- Lua version 5.2
-- Copyright (C) 2016 Hi.Project Ltd.


local w = require "wiringPi.core"

INPUT = 0
OUTPUT = 1
PWM_OUTPUT = 2
GPIO_CLOCK = 3
SOFT_PWM_OUTPUT = 4
SOFT_TONE_OUTPUT = 5
PWM_TONE_OUTPUT = 6

LOW	= 0
HIGH = 1

PUD_OFF = 0
PUD_DOWN = 1
PUD_UP =2

PWM_MODE_MS = 0
PWM_MODE_BAL =1

INT_EDGE_SETUP = 0
INT_EDGE_FALLING = 1
INT_EDGE_RISING = 2
INT_EDGE_BOTH = 3

wiringPiSetup = w.setup
wiringPiSetupGpio = w.setupGpio
wiringPiSetupPhys = w.setupPhys
wiringPiSetupSys = w.setupSys

pinMode = w.mode
pullUpDnControl = w.pud
digitalWrite = w.write
digitalRead = w.read

digitalWriteByte = w.writeByte
digitalReadByte = w.readByte
pwmSetMode = w.pwmmode
pwmSetRange = w.pwmrange
pwmSetClock = w.pwmclock 
piBoardRev = w.rev
wpiPinToGpio = w.pin2gpio
physPinToGpio = w.physpin2gpio

millis = w.millis
micros = w.micros
delay = w.delay
delayMicroseconds = w.microdelay

wiringPiI2CSetup = w.i2csetup
wiringPiI2CSetupInterface = w.i2csetupif
wiringPiI2CRead = w.i2cread
wiringPiI2CWrite = w.i2cwrite
wiringPiI2CWriteReg8 = w.i2cwriter8
wiringPiI2CWriteReg16 = w.i2cwriter16
wiringPiI2CReadReg8 = w.i2creadr8
wiringPiI2CReadReg16 = w.i2creadr16

shiftIn = w.shiftin
shiftOut = w.shiftout

softPwmCreate = w.pwm
softPwmWrite = w.freq

wiringPiISR = w.isr

return w
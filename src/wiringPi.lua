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

PI_MODEL_A = 0
PI_MODEL_B = 1
PI_MODEL_AP = 2
PI_MODEL_BP = 3
PI_MODEL_2 = 4
PI_ALPHA = 5
PI_MODEL_CM = 6
PI_MODEL_07 = 7
PI_MODEL_3 = 8
PI_MODEL_ZERO = 9

PI_VERSION_1 = 0
PI_VERSION_1_1 = 1
PI_VERSION_1_2 = 2
PI_VERSION_2 = 3

PI_MAKER_SONY = 0
PI_MAKER_EGOMAN = 1
PI_MAKER_MBEST = 2
PI_MAKER_UNKNOWN = 3

PI_ModelNames =
{
  "Model A",	--  0
  "Model B",	--  1
  "Model A+",	--  2
  "Model B+",	--  3
  "Pi 2",	--  4
  "Alpha",	--  5
  "CM",		--  6
  "Unknown07",	-- 07
  "Pi 3",	-- 08
  "Pi Zero",	-- 09
  "Unknown10",	-- 10
  "Unknown11",	-- 11
  "Unknown12",	-- 12
  "Unknown13",	-- 13
  "Unknown14",	-- 14
  "Unknown15",	-- 15
}

PI_RevisionNames =
{
  "00",
  "01",
  "02",
  "03",
  "04",
  "05",
  "06",
  "07",
  "08",
  "09",
  "10",
  "11",
  "12",
  "13",
  "14",
  "15",
} 

PI_MakerNames =
{
  "Sony",	--	 0
  "Egoman",	--	 1
  "Embest",	--	 2
  "Unknown",	--	 3
  "Embest",	--	 4
  "Unknown05",	--	 5
  "Unknown06",	--	 6
  "Unknown07",	--	 7
  "Unknown08",	--	 8
  "Unknown09",	--	 9
  "Unknown10",	--	10
  "Unknown11",	--	11
  "Unknown12",	--	12
  "Unknown13",	--	13
  "Unknown14",	--	14
  "Unknown15",	--	15
}

PI_MemorySize =
{
   256,		--	 0
   512,		--	 1
  1024,		--	 2
     0,		--	 3
     0,		--	 4
     0,		--	 5
     0,		--	 6
     0,		--	 7
}

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

piBoardId = w.piboardid
pinInfo = w.pininfo
physPinToGpio = w.phystogpio

return w
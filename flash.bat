REM
prompt $G
ECHO OFF
SET file_name=adc
SET device=Attiny84
CLS
ECHO.
ECHO BATCH COPY ATMEGA328P-PU


ECHO ENSURE MASTER CHIP IS IN THE READER

ECHO CTRL+C to abort OR PRESS Any key to begin copy...
ECHO.
pause >nul

ECHO Flashing to %device%..


.\tools\avrdude\avrdude -C .\tools\avrdude\avrdude.conf -c usbtiny -p %device% -U flash:w:%file_name%.hex


ECHO  Done flashing!

REM ECHO.



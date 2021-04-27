
REM
prompt $G
ECHO OFF

SET file_name=adc
SET device=Attiny84



CLS
ECHO.
ECHO COMPAILING EMBEDDED C PROGRAM INTO HEXCODE


ECHO CTRL+C to abort OR PRESS Any key to begin to compail...
ECHO.
pause >nul


ECHO Creating Object file from the program

    .\tools\avr-gcc\bin\avr-gcc -g -Os -mmcu=%device% -c %file_name%.c

ECHO Object file has been SAVED to %file_name%.o

    .\tools\avr-gcc\bin\avr-gcc -g -mmcu=%device% -o %file_name%.elf %file_name%.o

ECHO elf file has been SAVED to %file_name%.elf

	.\tools\avr-gcc\bin\avr-objcopy -j .text -j .data -O ihex %file_name%.elf %file_name%.hex


ECHO Hexadecimal file has been created and saved to %file_name%.hex


ECHO You all done


REM ECHO.


#define F_CPU 20000000UL      //Clock 20-Mhz
#include <avr/io.h>          


int main(void)
{
 
    DDRA |= (1<<3);        //Set PA3 as OUTPUT
    DDRA &=~ (1<<2);      //Set PA2 as INPUT
 
   
    while (1)            
        {
            if(PINA & (1<<2))   //check PA2 is HIGH
                {
                    PORTA = PORTA|(1<<3);  // set PA3 as HIGH(ON)
   
                 }
            else
                {
                    PORTA &=~(1<<3);      //set PA3 as LOW (OFF)
                }
  
        }   
}
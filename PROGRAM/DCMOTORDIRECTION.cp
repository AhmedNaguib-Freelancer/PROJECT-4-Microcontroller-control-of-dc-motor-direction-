#line 1 "C:/Users/only try/Desktop/PROJECT 4 Microcontroller (control of dc motor direction)/PROGRAM/DCMOTORDIRECTION.c"
void main() {
TRISB=0;
TRISC=1;
PORTB=0;
while(1)
{
if(PORTC.F0==1)
PORTB=0B00000101;
else if(PORTC.F1==1)
PORTB=0B00001010;
}
}

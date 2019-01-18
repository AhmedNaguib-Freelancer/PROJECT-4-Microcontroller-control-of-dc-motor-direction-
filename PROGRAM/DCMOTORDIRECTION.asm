
_main:

;DCMOTORDIRECTION.c,1 :: 		void main() {
;DCMOTORDIRECTION.c,2 :: 		TRISB=0;
	CLRF       TRISB+0
;DCMOTORDIRECTION.c,3 :: 		TRISC=1;
	MOVLW      1
	MOVWF      TRISC+0
;DCMOTORDIRECTION.c,4 :: 		PORTB=0;
	CLRF       PORTB+0
;DCMOTORDIRECTION.c,5 :: 		while(1)
L_main0:
;DCMOTORDIRECTION.c,7 :: 		if(PORTC.F0==1)
	BTFSS      PORTC+0, 0
	GOTO       L_main2
;DCMOTORDIRECTION.c,8 :: 		PORTB=0B00000101;
	MOVLW      5
	MOVWF      PORTB+0
	GOTO       L_main3
L_main2:
;DCMOTORDIRECTION.c,9 :: 		else if(PORTC.F1==1)
	BTFSS      PORTC+0, 1
	GOTO       L_main4
;DCMOTORDIRECTION.c,10 :: 		PORTB=0B00001010;
	MOVLW      10
	MOVWF      PORTB+0
L_main4:
L_main3:
;DCMOTORDIRECTION.c,11 :: 		}
	GOTO       L_main0
;DCMOTORDIRECTION.c,12 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

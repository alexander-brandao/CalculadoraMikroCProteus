
_tecla:

;config.h,16 :: 		char tecla(){
;config.h,17 :: 		char kp=0;
	CLRF        tecla_kp_L0+0 
;config.h,18 :: 		do{
L_tecla0:
;config.h,19 :: 		kp=Keypad_Key_Click();
	CALL        _Keypad_Key_Click+0, 0
	MOVF        R0, 0 
	MOVWF       tecla_kp_L0+0 
;config.h,20 :: 		}while(kp==0);
	MOVF        R0, 0 
	XORLW       0
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla0
;config.h,21 :: 		switch(kp) {
	GOTO        L_tecla3
;config.h,22 :: 		case 1: kp='1'; break;
L_tecla5:
	MOVLW       49
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,23 :: 		case 2: kp='2'; break;
L_tecla6:
	MOVLW       50
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,24 :: 		case 3: kp='3'; break;
L_tecla7:
	MOVLW       51
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,25 :: 		case 4: kp='+'; break;
L_tecla8:
	MOVLW       43
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,26 :: 		case 5: kp='4'; break;
L_tecla9:
	MOVLW       52
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,27 :: 		case 6: kp='5'; break;
L_tecla10:
	MOVLW       53
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,28 :: 		case 7: kp='6'; break;
L_tecla11:
	MOVLW       54
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,29 :: 		case 8: kp='-'; break;
L_tecla12:
	MOVLW       45
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,30 :: 		case 9 : kp='7'; break;
L_tecla13:
	MOVLW       55
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,31 :: 		case 10: kp='8'; break;
L_tecla14:
	MOVLW       56
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,32 :: 		case 11: kp='9'; break;
L_tecla15:
	MOVLW       57
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,33 :: 		case 12: kp='x'; break;
L_tecla16:
	MOVLW       120
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,34 :: 		case 13: kp='='; break;
L_tecla17:
	MOVLW       61
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,35 :: 		case 14: kp='0'; break;
L_tecla18:
	MOVLW       48
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,36 :: 		case 15: kp='='; break;
L_tecla19:
	MOVLW       61
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,37 :: 		case 16: kp='/'; break;
L_tecla20:
	MOVLW       47
	MOVWF       tecla_kp_L0+0 
	GOTO        L_tecla4
;config.h,38 :: 		}
L_tecla3:
	MOVF        tecla_kp_L0+0, 0 
	XORLW       1
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla5
	MOVF        tecla_kp_L0+0, 0 
	XORLW       2
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla6
	MOVF        tecla_kp_L0+0, 0 
	XORLW       3
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla7
	MOVF        tecla_kp_L0+0, 0 
	XORLW       4
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla8
	MOVF        tecla_kp_L0+0, 0 
	XORLW       5
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla9
	MOVF        tecla_kp_L0+0, 0 
	XORLW       6
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla10
	MOVF        tecla_kp_L0+0, 0 
	XORLW       7
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla11
	MOVF        tecla_kp_L0+0, 0 
	XORLW       8
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla12
	MOVF        tecla_kp_L0+0, 0 
	XORLW       9
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla13
	MOVF        tecla_kp_L0+0, 0 
	XORLW       10
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla14
	MOVF        tecla_kp_L0+0, 0 
	XORLW       11
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla15
	MOVF        tecla_kp_L0+0, 0 
	XORLW       12
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla16
	MOVF        tecla_kp_L0+0, 0 
	XORLW       13
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla17
	MOVF        tecla_kp_L0+0, 0 
	XORLW       14
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla18
	MOVF        tecla_kp_L0+0, 0 
	XORLW       15
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla19
	MOVF        tecla_kp_L0+0, 0 
	XORLW       16
	BTFSC       STATUS+0, 2 
	GOTO        L_tecla20
L_tecla4:
;config.h,39 :: 		return kp;
	MOVF        tecla_kp_L0+0, 0 
	MOVWF       R0 
;config.h,40 :: 		}
L_end_tecla:
	RETURN      0
; end of _tecla

_get_num1:

;calculadora.c,7 :: 		void get_num1(){
;calculadora.c,8 :: 		do{
L_get_num121:
;calculadora.c,9 :: 		te=tecla();
	CALL        _tecla+0, 0
	MOVF        R0, 0 
	MOVWF       _te+0 
;calculadora.c,10 :: 		LCD_Chr(2,i,te);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _i+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        R0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;calculadora.c,11 :: 		i++;
	INCF        _i+0, 1 
;calculadora.c,12 :: 		if(te=='+'||te=='-'||te=='x'||te=='/'){
	MOVF        _te+0, 0 
	XORLW       43
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num143
	MOVF        _te+0, 0 
	XORLW       45
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num143
	MOVF        _te+0, 0 
	XORLW       120
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num143
	MOVF        _te+0, 0 
	XORLW       47
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num143
	GOTO        L_get_num126
L__get_num143:
;calculadora.c,13 :: 		condicao=1;
	MOVLW       1
	MOVWF       _condicao+0 
;calculadora.c,14 :: 		oper=te;
	MOVF        _te+0, 0 
	MOVWF       _oper+0 
;calculadora.c,15 :: 		}else{
	GOTO        L_get_num127
L_get_num126:
;calculadora.c,17 :: 		te = te-48;
	MOVLW       48
	SUBWF       _te+0, 0 
	MOVWF       FLOC__get_num1+4 
	MOVF        FLOC__get_num1+4, 0 
	MOVWF       _te+0 
;calculadora.c,18 :: 		acum = acum*10.0+te;
	MOVF        _acum+0, 0 
	MOVWF       R0 
	MOVF        _acum+1, 0 
	MOVWF       R1 
	MOVF        _acum+2, 0 
	MOVWF       R2 
	MOVF        _acum+3, 0 
	MOVWF       R3 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__get_num1+0 
	MOVF        R1, 0 
	MOVWF       FLOC__get_num1+1 
	MOVF        R2, 0 
	MOVWF       FLOC__get_num1+2 
	MOVF        R3, 0 
	MOVWF       FLOC__get_num1+3 
	MOVF        FLOC__get_num1+4, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        FLOC__get_num1+0, 0 
	MOVWF       R4 
	MOVF        FLOC__get_num1+1, 0 
	MOVWF       R5 
	MOVF        FLOC__get_num1+2, 0 
	MOVWF       R6 
	MOVF        FLOC__get_num1+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _acum+0 
	MOVF        R1, 0 
	MOVWF       _acum+1 
	MOVF        R2, 0 
	MOVWF       _acum+2 
	MOVF        R3, 0 
	MOVWF       _acum+3 
;calculadora.c,19 :: 		}
L_get_num127:
;calculadora.c,21 :: 		}while(condicao!=1);
	MOVF        _condicao+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_get_num121
;calculadora.c,22 :: 		num1=acum;
	MOVF        _acum+0, 0 
	MOVWF       _num1+0 
	MOVF        _acum+1, 0 
	MOVWF       _num1+1 
	MOVF        _acum+2, 0 
	MOVWF       _num1+2 
	MOVF        _acum+3, 0 
	MOVWF       _num1+3 
;calculadora.c,23 :: 		acum=0;
	CLRF        _acum+0 
	CLRF        _acum+1 
	CLRF        _acum+2 
	CLRF        _acum+3 
;calculadora.c,24 :: 		condicao=0;
	CLRF        _condicao+0 
;calculadora.c,27 :: 		}
L_end_get_num1:
	RETURN      0
; end of _get_num1

_get_num2:

;calculadora.c,29 :: 		void get_num2(){
;calculadora.c,30 :: 		do{
L_get_num228:
;calculadora.c,31 :: 		te=tecla();
	CALL        _tecla+0, 0
	MOVF        R0, 0 
	MOVWF       _te+0 
;calculadora.c,32 :: 		LCD_Chr(2,i,te);
	MOVLW       2
	MOVWF       FARG_Lcd_Chr_row+0 
	MOVF        _i+0, 0 
	MOVWF       FARG_Lcd_Chr_column+0 
	MOVF        R0, 0 
	MOVWF       FARG_Lcd_Chr_out_char+0 
	CALL        _Lcd_Chr+0, 0
;calculadora.c,33 :: 		i++;
	INCF        _i+0, 1 
;calculadora.c,34 :: 		if(te=='+'||te=='-'||te=='x'||te=='/'||te=='='){
	MOVF        _te+0, 0 
	XORLW       43
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num244
	MOVF        _te+0, 0 
	XORLW       45
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num244
	MOVF        _te+0, 0 
	XORLW       120
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num244
	MOVF        _te+0, 0 
	XORLW       47
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num244
	MOVF        _te+0, 0 
	XORLW       61
	BTFSC       STATUS+0, 2 
	GOTO        L__get_num244
	GOTO        L_get_num233
L__get_num244:
;calculadora.c,35 :: 		condicao=1;
	MOVLW       1
	MOVWF       _condicao+0 
;calculadora.c,36 :: 		}else{
	GOTO        L_get_num234
L_get_num233:
;calculadora.c,38 :: 		te = te-48;
	MOVLW       48
	SUBWF       _te+0, 0 
	MOVWF       FLOC__get_num2+4 
	MOVF        FLOC__get_num2+4, 0 
	MOVWF       _te+0 
;calculadora.c,39 :: 		acum = acum*10.0+te;
	MOVF        _acum+0, 0 
	MOVWF       R0 
	MOVF        _acum+1, 0 
	MOVWF       R1 
	MOVF        _acum+2, 0 
	MOVWF       R2 
	MOVF        _acum+3, 0 
	MOVWF       R3 
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       130
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__get_num2+0 
	MOVF        R1, 0 
	MOVWF       FLOC__get_num2+1 
	MOVF        R2, 0 
	MOVWF       FLOC__get_num2+2 
	MOVF        R3, 0 
	MOVWF       FLOC__get_num2+3 
	MOVF        FLOC__get_num2+4, 0 
	MOVWF       R0 
	CALL        _byte2double+0, 0
	MOVF        FLOC__get_num2+0, 0 
	MOVWF       R4 
	MOVF        FLOC__get_num2+1, 0 
	MOVWF       R5 
	MOVF        FLOC__get_num2+2, 0 
	MOVWF       R6 
	MOVF        FLOC__get_num2+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _acum+0 
	MOVF        R1, 0 
	MOVWF       _acum+1 
	MOVF        R2, 0 
	MOVWF       _acum+2 
	MOVF        R3, 0 
	MOVWF       _acum+3 
;calculadora.c,40 :: 		}
L_get_num234:
;calculadora.c,42 :: 		}while(condicao!=1);
	MOVF        _condicao+0, 0 
	XORLW       1
	BTFSS       STATUS+0, 2 
	GOTO        L_get_num228
;calculadora.c,43 :: 		num2=acum;
	MOVF        _acum+0, 0 
	MOVWF       _num2+0 
	MOVF        _acum+1, 0 
	MOVWF       _num2+1 
	MOVF        _acum+2, 0 
	MOVWF       _num2+2 
	MOVF        _acum+3, 0 
	MOVWF       _num2+3 
;calculadora.c,44 :: 		acum=0;
	CLRF        _acum+0 
	CLRF        _acum+1 
	CLRF        _acum+2 
	CLRF        _acum+3 
;calculadora.c,45 :: 		condicao=0;
	CLRF        _condicao+0 
;calculadora.c,47 :: 		}
L_end_get_num2:
	RETURN      0
; end of _get_num2

_main:

;calculadora.c,49 :: 		void main() {
;calculadora.c,50 :: 		ADCON1 = 15;
	MOVLW       15
	MOVWF       ADCON1+0 
;calculadora.c,51 :: 		LCD_Init();
	CALL        _Lcd_Init+0, 0
;calculadora.c,52 :: 		LCD_Cmd(12);
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;calculadora.c,53 :: 		Keypad_Init();
	CALL        _Keypad_Init+0, 0
;calculadora.c,55 :: 		while(1) {
L_main35:
;calculadora.c,56 :: 		LCD_Cmd(1);
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;calculadora.c,57 :: 		LCD_Out(1,1,"CALCULADORA: ");
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr1_calculadora+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr1_calculadora+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;calculadora.c,58 :: 		get_num1();
	CALL        _get_num1+0, 0
;calculadora.c,59 :: 		get_num2();
	CALL        _get_num2+0, 0
;calculadora.c,60 :: 		i=1;
	MOVLW       1
	MOVWF       _i+0 
;calculadora.c,62 :: 		switch(oper){
	GOTO        L_main37
;calculadora.c,63 :: 		case'+': re=num1+num2; break;
L_main39:
	MOVF        _num1+0, 0 
	MOVWF       R0 
	MOVF        _num1+1, 0 
	MOVWF       R1 
	MOVF        _num1+2, 0 
	MOVWF       R2 
	MOVF        _num1+3, 0 
	MOVWF       R3 
	MOVF        _num2+0, 0 
	MOVWF       R4 
	MOVF        _num2+1, 0 
	MOVWF       R5 
	MOVF        _num2+2, 0 
	MOVWF       R6 
	MOVF        _num2+3, 0 
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _re+0 
	MOVF        R1, 0 
	MOVWF       _re+1 
	MOVF        R2, 0 
	MOVWF       _re+2 
	MOVF        R3, 0 
	MOVWF       _re+3 
	GOTO        L_main38
;calculadora.c,64 :: 		case'-': re=num1-num2; break;
L_main40:
	MOVF        _num2+0, 0 
	MOVWF       R4 
	MOVF        _num2+1, 0 
	MOVWF       R5 
	MOVF        _num2+2, 0 
	MOVWF       R6 
	MOVF        _num2+3, 0 
	MOVWF       R7 
	MOVF        _num1+0, 0 
	MOVWF       R0 
	MOVF        _num1+1, 0 
	MOVWF       R1 
	MOVF        _num1+2, 0 
	MOVWF       R2 
	MOVF        _num1+3, 0 
	MOVWF       R3 
	CALL        _Sub_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _re+0 
	MOVF        R1, 0 
	MOVWF       _re+1 
	MOVF        R2, 0 
	MOVWF       _re+2 
	MOVF        R3, 0 
	MOVWF       _re+3 
	GOTO        L_main38
;calculadora.c,65 :: 		case'x': re=num1*num2; break;
L_main41:
	MOVF        _num1+0, 0 
	MOVWF       R0 
	MOVF        _num1+1, 0 
	MOVWF       R1 
	MOVF        _num1+2, 0 
	MOVWF       R2 
	MOVF        _num1+3, 0 
	MOVWF       R3 
	MOVF        _num2+0, 0 
	MOVWF       R4 
	MOVF        _num2+1, 0 
	MOVWF       R5 
	MOVF        _num2+2, 0 
	MOVWF       R6 
	MOVF        _num2+3, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _re+0 
	MOVF        R1, 0 
	MOVWF       _re+1 
	MOVF        R2, 0 
	MOVWF       _re+2 
	MOVF        R3, 0 
	MOVWF       _re+3 
	GOTO        L_main38
;calculadora.c,66 :: 		case'/': re=num1/num2; break;
L_main42:
	MOVF        _num2+0, 0 
	MOVWF       R4 
	MOVF        _num2+1, 0 
	MOVWF       R5 
	MOVF        _num2+2, 0 
	MOVWF       R6 
	MOVF        _num2+3, 0 
	MOVWF       R7 
	MOVF        _num1+0, 0 
	MOVWF       R0 
	MOVF        _num1+1, 0 
	MOVWF       R1 
	MOVF        _num1+2, 0 
	MOVWF       R2 
	MOVF        _num1+3, 0 
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _re+0 
	MOVF        R1, 0 
	MOVWF       _re+1 
	MOVF        R2, 0 
	MOVWF       _re+2 
	MOVF        R3, 0 
	MOVWF       _re+3 
	GOTO        L_main38
;calculadora.c,68 :: 		}
L_main37:
	MOVF        _oper+0, 0 
	XORLW       43
	BTFSC       STATUS+0, 2 
	GOTO        L_main39
	MOVF        _oper+0, 0 
	XORLW       45
	BTFSC       STATUS+0, 2 
	GOTO        L_main40
	MOVF        _oper+0, 0 
	XORLW       120
	BTFSC       STATUS+0, 2 
	GOTO        L_main41
	MOVF        _oper+0, 0 
	XORLW       47
	BTFSC       STATUS+0, 2 
	GOTO        L_main42
L_main38:
;calculadora.c,69 :: 		sprintf(aux,"%0.1f",re);
	MOVLW       _aux+0
	MOVWF       FARG_sprintf_wh+0 
	MOVLW       hi_addr(_aux+0)
	MOVWF       FARG_sprintf_wh+1 
	MOVLW       ?lstr_2_calculadora+0
	MOVWF       FARG_sprintf_f+0 
	MOVLW       hi_addr(?lstr_2_calculadora+0)
	MOVWF       FARG_sprintf_f+1 
	MOVLW       higher_addr(?lstr_2_calculadora+0)
	MOVWF       FARG_sprintf_f+2 
	MOVF        _re+0, 0 
	MOVWF       FARG_sprintf_wh+5 
	MOVF        _re+1, 0 
	MOVWF       FARG_sprintf_wh+6 
	MOVF        _re+2, 0 
	MOVWF       FARG_sprintf_wh+7 
	MOVF        _re+3, 0 
	MOVWF       FARG_sprintf_wh+8 
	CALL        _sprintf+0, 0
;calculadora.c,70 :: 		LCD_Out_Cp(aux);
	MOVLW       _aux+0
	MOVWF       FARG_Lcd_Out_CP_text+0 
	MOVLW       hi_addr(_aux+0)
	MOVWF       FARG_Lcd_Out_CP_text+1 
	CALL        _Lcd_Out_CP+0, 0
;calculadora.c,71 :: 		LCD_Out(4,1,"tecle p/ reiniciar");
	MOVLW       4
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       ?lstr3_calculadora+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(?lstr3_calculadora+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;calculadora.c,72 :: 		te=tecla();
	CALL        _tecla+0, 0
	MOVF        R0, 0 
	MOVWF       _te+0 
;calculadora.c,73 :: 		}
	GOTO        L_main35
;calculadora.c,74 :: 		}
L_end_main:
	GOTO        $+0
; end of _main

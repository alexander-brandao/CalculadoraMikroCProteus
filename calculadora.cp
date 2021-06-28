#line 1 "C:/Users/decor/Desktop/Microcontrolador/calculadora/calculadora.c"
#line 1 "c:/users/decor/desktop/microcontrolador/calculadora/config.h"
char keypadPort at PORTB;
sbit LCD_RS at RD0_bit;
sbit LCD_EN at RD1_bit;
sbit LCD_D4 at RD4_bit;
sbit LCD_D5 at RD5_bit;
sbit LCD_D6 at RD6_bit;
sbit LCD_D7 at RD7_bit;

sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISD4_bit;
sbit LCD_D5_Direction at TRISD5_bit;
sbit LCD_D6_Direction at TRISD6_bit;
sbit LCD_D7_Direction at TRISD7_bit;

char tecla(){
 char kp=0;
 do{
 kp=Keypad_Key_Click();
 }while(kp==0);
 switch(kp) {
 case 1: kp='1'; break;
 case 2: kp='2'; break;
 case 3: kp='3'; break;
 case 4: kp='+'; break;
 case 5: kp='4'; break;
 case 6: kp='5'; break;
 case 7: kp='6'; break;
 case 8: kp='-'; break;
 case 9 : kp='7'; break;
 case 10: kp='8'; break;
 case 11: kp='9'; break;
 case 12: kp='x'; break;
 case 13: kp='='; break;
 case 14: kp='0'; break;
 case 15: kp='='; break;
 case 16: kp='/'; break;
 }
 return kp;
}
#line 3 "C:/Users/decor/Desktop/Microcontrolador/calculadora/calculadora.c"
float num1, num2, re, acum=0.0;

char aux[20]= " ", condicao=0,te,i=1,oper;

void get_num1(){
 do{
 te=tecla();
 LCD_Chr(2,i,te);
 i++;
 if(te=='+'||te=='-'||te=='x'||te=='/'){
 condicao=1;
 oper=te;
 }else{

 te = te-48;
 acum = acum*10.0+te;
 }

 }while(condicao!=1);
 num1=acum;
 acum=0;
 condicao=0;


}

void get_num2(){
 do{
 te=tecla();
 LCD_Chr(2,i,te);
 i++;
 if(te=='+'||te=='-'||te=='x'||te=='/'||te=='='){
 condicao=1;
 }else{

 te = te-48;
 acum = acum*10.0+te;
 }

 }while(condicao!=1);
 num2=acum;
 acum=0;
 condicao=0;

}

void main() {
 ADCON1 = 15;
 LCD_Init();
 LCD_Cmd(12);
 Keypad_Init();

 while(1) {
 LCD_Cmd(1);
 LCD_Out(1,1,"CALCULADORA: ");
 get_num1();
 get_num2();
 i=1;

 switch(oper){
 case'+': re=num1+num2; break;
 case'-': re=num1-num2; break;
 case'x': re=num1*num2; break;
 case'/': re=num1/num2; break;

 }
 sprintf(aux,"%0.1f",re);
 LCD_Out_Cp(aux);
 LCD_Out(4,1,"tecle p/ reiniciar");
 te=tecla();
 }
}

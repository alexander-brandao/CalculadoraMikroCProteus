#include "CONFIG.h"

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
                  //convertendo char para numero com a tabela ascii
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
                  //convertendo char para numero com a tabela ascii
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
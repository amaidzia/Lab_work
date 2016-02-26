
#include <Servo.h>
#include <stdlib.h>

String act_str,d_send="send",d_rece="read"; 
Servo c1_servo,c2_servo,v1_servo,v2_servo,v3_servo,v4_servo;
int c_servos[2]={1,2},p1=0,p2=0;
char d_data[10]={};

void setup() 
{
  for(int i=2;i<=13;i++)
  {
    pinMode(i,OUTPUT);
  }
  pinMode(A0,OUTPUT);
  pinMode(A1,OUTPUT);
  
  Serial.begin(115200);
  while(!Serial);
  Serial.setTimeout(1);
  d_send+='\n';
  d_rece+='\n';

  c1_servo.attach(3);
  c2_servo.attach(4);
  v1_servo.attach(6);
  v2_servo.attach(9);
  v3_servo.attach(10);
  v4_servo.attach(11);
}

void loop() 
{
  int valves[4],coupler[2],sols[4];
  if(Serial.available() > 0)
    {
      act_str = Serial.readString();
    }
  if(act_str==d_send) 
    { 
      Serial.readBytes(d_data,10);  
      for(int i=0;i<2;i++)
      {
        coupler[i]=(int)d_data[i];
      }
       for(int i=2;i<6;i++)
      {
        sols[i-2]=(int)d_data[i];
      }
       for(int i=6;i<10;i++)
      {
        valves[i-6]=(int)d_data[i];
      }
      val(valves);
      coup(coupler);
      a_sols(sols);
    }
     act_str="";
}

void val(int angle[4])
{
    v1_servo.write(angle[1]);
    v2_servo.write(angle[2]);
    v3_servo.write(angle[3]);
    v4_servo.write(angle[4]);
}

void coup(int ser_pos[2])
{ 
   if (ser_pos[0]==0)
    {
      c1_servo.write(40);
    }
   if (ser_pos[0]==1)
    {
      c1_servo.write(110);
    } 
   if (ser_pos[1]==0)
    {
      c2_servo.write(40);
    }
   if (ser_pos[1]==1)
    {
      c2_servo.write(110);
    }
}

void a_sols(int state[4])
{
    if (state[0]==0)
      {
        digitalWrite(A0, HIGH);
        digitalWrite(A1, LOW);
      }
    if (state[0]==1)
      {
        digitalWrite(A0,LOW);
        digitalWrite(A1,HIGH);
      }
  if (state[1]==0)
      {
        digitalWrite(2, HIGH);
        digitalWrite(4, LOW);
      }
   if (state[1]==1)
      {
        digitalWrite(2,LOW);
        digitalWrite(4,HIGH);
      }
   if (state[2]==0)
      {
        digitalWrite(7, HIGH);
        digitalWrite(8, LOW);
      }
    if (state[2]==1)
      {
        digitalWrite(7,LOW);
        digitalWrite(8,HIGH);
      } 
    
   if (state[3]==0)
      {
        digitalWrite(12, HIGH);
        digitalWrite(13, LOW);
      }
    if (state[3]==1)
      {
        digitalWrite(12,LOW);
        digitalWrite(13,HIGH);
      } 
}


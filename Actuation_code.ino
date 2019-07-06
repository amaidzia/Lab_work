
#include <Servo.h>
#include <stdlib.h>

String act_str,c1e="c1e",c1d="c1d",c2e="c2e",c2d="c2d"; 
Servo c1_servo,c2_servo;
int positions[2]={60,60},c_servos[2]={1,2},p1=0,p2=0;

void setup() 
{
  Serial.begin(115200);
  while(!Serial);
  Serial.println("serial port ready");
  c1e +='\n';
  c1d +='\n';
  c2e +='\n';
  c2d +='\n';
  c1_servo.attach(3);
  c2_Servo.attach(4);

}

void loop() 
{
  if (Serial.available() > 0)
    {
      act_str = Serial.readStringUntil('\n');
    }
  if(c1e==act_str) 
          { 
            myservo.attach(3);
            Serial.println("Opening servo 1");
            p1=run_servo(c_servos[1],p1);
            
          }
   if(c1d==act_str) 
          {
            myservo.attach(3);
            Serial.println("Closing servo 1");
            p1=run_servo(c_servos[1],p1);
          }
  if(c2e==act_str) 
          { 
            myservo.attach(3);
            Serial.println("Opening servo 1");
            p2=run_servo(c_servos[1],p2);
            
          }
   if(c2d==act_str) 
          {
            myservo.attach(3);
            Serial.println("Closing servo 1");
            p2=run_servo(c_servos[1],p2);
          }
   act_str="";

}

int run_servo(int ser_no,int ser_pos)
{ 
 if (ser_no==1)
 {   
   if (ser_pos==0)
    {
      c1_servo.write(positions[2]);
      ser_pos=1;
    }
   if (ser_pos==1)
    {
      c1_servo.write(positions[1]);
      ser_pos=0;
    }
 }
 if (ser_no==2)
 {   
   if (ser_pos==0)
    {
      c2_servo.write(positions[2]);
      ser_pos=1;
    }
   if (ser_pos==1)
    {
      c2_servo.write(positions[1]);
      ser_pos=0;
    }
 }
  return ser_pos;
}

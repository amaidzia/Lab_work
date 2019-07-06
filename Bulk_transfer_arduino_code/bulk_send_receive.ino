
String act_str="";
void setup() 
{
  // put your setup code here, to run once:
  Serial.begin(115200);
  while(!Serial);
  pinMode(13, OUTPUT);
  Serial.setTimeout(1);

}

void loop() 
{
  // put your main code here, to run repeatedly:
  String c1e = "send";
  String c2e = "read";
  c1e +='\n';
  c2e +='\n';
  char d_data[10]={};
  char c_data[10]={0,1,0,1,0,1,35,65,45,10};

  int i_data[5]={512,1000,765,875,934};
  char b_data[10]={};

  b_data[0]=char(i_data[0]/256);
  b_data[1]=char(i_data[0]%256);
  b_data[2]=char(i_data[1]/256);
  b_data[3]=char(i_data[1]%256);
  b_data[4]=char(i_data[2]/256);
  b_data[5]=char(i_data[2]%256);
  b_data[6]=char(i_data[3]/256);
  b_data[7]=char(i_data[3]%256);
  b_data[8]=char(i_data[4]/256);
  b_data[9]=char(i_data[4]%256);


  if (Serial.available() > 0)
    {
      act_str = Serial.readString(); 
      if(act_str == c1e) 
      { 
            Serial.readBytes(d_data,10);
            
            Serial.write(d_data,10);
            Serial.print("\n");


            if(d_data == c_data)
            {
              digitalWrite(13, HIGH);
            }

            else
            {
              digitalWrite(13, LOW);
            }

            
       }
       else if (act_str == c2e)
       {
         /* code */
          Serial.write(b_data,10);
          Serial.print("\n");


       }
       


       

       act_str="";
//       Serial.flush();

    }
    else
    {
//      Serial.println("nothing received");
    }

}

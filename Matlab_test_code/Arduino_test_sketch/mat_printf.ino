String act_str="";
String s="";


void setup()
{
  // put your setup code here, to run once:
  Serial.begin(115200);
  while(!Serial);
  pinMode(13, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(6, OUTPUT);
  pinMode(8, OUTPUT);
  Serial.setTimeout(10);

}

void loop()
{
    // put your main code here, to run repeatedly:
    char d_data[10]={};
    String c1e = "send";
    c1e +='\n';
//    d_data[10]='\n';

    while(!Serial.available());
    
    if (Serial.available() > 0)
    {
//        act_str = Serial.readStringUntil('\n');
//        act_str = Serial.readString();
//        s=act_str+"ggggggg"+'\n';
//        Serial.print(s);
//        Serial.print('\n');
         Serial.readBytes(d_data,10);
//        if(act_str == c1e) 
//        {
//            Serial.readBytes(d_data,10);
//            s = Serial.readString();
//            digitalWrite(13, HIGH);
//            Serial.write(d_data);
//            Serial.print('\n');
//        }
//
        if(d_data[6]==35)
        {
              digitalWrite(13, HIGH);
              delay(500);
              digitalWrite(13, LOW);
        }

        if(d_data[7]==65)
        {
              digitalWrite(4, HIGH);
              delay(500);
              digitalWrite(4, LOW);
        }

        if(d_data[8]==45)
        {
              digitalWrite(6, HIGH);
              delay(500);
              digitalWrite(6, LOW);
        }

        if(d_data[9]==10)
        {
              digitalWrite(8, HIGH);
              delay(500);
              digitalWrite(8, LOW);
        }


        else
        {
//            Serial.println("send string not received");
            digitalWrite(13, LOW);
        }
//    
    }
    else
    {
        Serial.println("serial not received");
        digitalWrite(13, LOW);
    }
//
    s="";
    act_str = "";

    
}

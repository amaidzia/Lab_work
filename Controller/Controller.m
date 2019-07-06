
%%*************************************************************************
%   Arduino_Outputs = Controller(Cost_Outputs)
%  - Main controller program + calculates the outputs to send to arduino
%  - Cost_Outputs = [ang,length,pressure,flow]  
%  - Arduino_Outputs = [c1,c2,s1,s2,s3,s4,v1,v2,v3,v4],
%  c=coup,v=value,s=solenoid
% 
% 
% 
%**************************************************************************




function Arduino_Outputs = Controller(Cost_Outputs,Sensor_Data)
    % Important Variables%********************************
    Kp=1;
    M1_expansion_length = 0.12;
    c1=0;c2=0;v1=0;v2=0;s1=0;s2=0;s3=0;s4=0;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%***********************

    diff_ang = Cost_Outputs(1);
    %If the max angle diff can be 40 degrees then we normalize it as follow
    diff_angle_normalized = diff_ang/70;
    
     

    %% 
    % Check to see if the diff is > 0
    
    if (diff_angle_normalized > 0 && abs(diff_ang)>3)
       % Shorten M2
       c2=1;
       s4 =1;
       v4 = Kp*(diff_angle_normalized*90);
       if (v4>90) %i.e. it exceeds the upper limit of value angle
           v4=90;
       elseif (v4<3)
          v4=0;
          s4=0;
           
       end
       
       % Now expand M1 (@ full speed)until it reaches certain length
       length1 = Sensor_Data(2);
       if(length1 < M1_expansion_length)
          s1=1;
          v1=90;
          c1=0;
       else
           s1=0;
           v1=0;
           c1=0;
       end
       
       %Close the other values-solenoid pair
       v2=0;
       v3=0;
       s2=0;
       s3=0;
       
    elseif(diff_angle_normalized < 0 && abs(diff_angle)>3)
        % The Strategy here is to let the limb fall and when it is within
        % some tolerance couple it so that it doesn't move anymore.
        c2=0;
        c1=0;
        
    elseif(abs(diff_angle)<3)
        % Close all the values and engage all the coup/decoup
        c1=1;
        c2=1;
        s1=0;
        s2=0;
        s3=0;
        s4=0;
        v1=0;
        v2=0;
        v3=0;
        v4=0;
    else
    % Can come here for erroneous reading . In this case shutdown everything and stop it in its current position    
        s1=0;
        s2=0;
        s3=0;
        s4=0;
        v1=0;
        v2=0;
        v3=0;
        v4=0;
        c1=1;
        c2=1;

    end

    Arduino_Outputs = [c1,c2,s1,s2,s3,s4,v1,v2,v3,v4];


end
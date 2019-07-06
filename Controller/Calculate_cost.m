
%%*************************************************************************
% Cost_Outputs = Calculate_cost(Sensor_Data)
%  
%  - This function calculates the cost
% 
% 
% 
% 
%**************************************************************************





function Cost_Outputs = Calculate_cost(Desired_trajectory,Sensor_Data)

    ang =        Sensor_Data(1);
    length1 =    Sensor_Data(2);
    length2 =    Sensor_Data(3);
    pressure1 =  Sensor_Data(4);
    pressure2 =  Sensor_Data(5);
    %flow =      Sensor_Data(4);

    
    des_ang =        Desired_trajectory(1);
    des_length1 =    Desired_trajectory(2);
    des_length2 =    Desired_trajectory(3);
    des_pressure1 =  Desired_trajectory(4);
    des_pressure =   Desired_trajectory(5);
%    des_flow =      Desired_trajectory(4);
    
    Cost_Outputs = Desired_trajectory - Sensor_Data;


end
 

%%*************************************************************************
%  Main Code file
% function calls:
% - [ang,length,pressure,flow]=Data_acquire()
% 
% 
% 
% 
%**************************************************************************

%% Global Variables
% Global_Variables

function Main()
    Global_Variables
    
    i=0;
 
   
    Ready_System();
    Start_timer();
    
    Sensor_Data  = zeros(1,5);
    Desired_traj = zeros(1,5);
    Cost_Outputs = zeros(1,5);
    
    while(1)
        Sensor_Data     = Data_acquire();
%         Desired_traj    = Generate_desired_trajectory(i)
%         Cost_Outputs    = Calculate_cost(Desired_trajectory,Sensor_Data); %Not implemented yet
%         Arduino_Outputs = Controller(Cost_Outputs,Sensor_Data); % Not implmented yet
%         ack             = Send_to_arduino(Arduino_Outputs);% Not implemented yet
        i=i+1;
%       Pause_till_next_cycle(i); % implemented
    end

end
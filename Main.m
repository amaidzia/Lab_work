 

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
%      Global_Variables
    
    i=0;
 
   
    Ready_System();
    Start_timer();
    
    Sensor_Data  = zeros(1,5);
    Desired_traj = zeros(1,5);
    Cost_Outputs = zeros(1,5);
    Arduino_Outputs =zeros(1,10);%[1,0,0,1,0,1,30,45,50,20];
    
    fid = fopen('G:\Git_repo\Lab_work\data_logger\logger.txt','at+');
    fprintf(fid,'%d %d %d %d %d %d',clock);
    fprintf('\n\r');
        
    
    
    
%     Sensor_Data
%     Desired_traj
%     Cost_Outputs
    while(1)
         Sensor_Data     = Data_acquire();
         Desired_traj    = Generate_desired_trajectory(i)
         Cost_Outputs    = Calculate_cost(Desired_traj,Sensor_Data); %
         Arduino_Outputs = Controller(Cost_Outputs,Sensor_Data); % 
%          Data_logger(Desired_traj,Sensor_Data,Arduino_Outputs,i,fid); % Not yet implemented, dump data in file and plot
%          the graphs
        ack             = Send_to_arduino(Arduino_Outputs);% 
        i=i+1;
%        Pause_till_next_cycle(i); % implemented
%          pause(0.02);
    end

end
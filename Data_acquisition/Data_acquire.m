%%*************************************************************************
%  [ang,length,pressure,flow] = Data_acquire().m
% This file contains code for data acquisition
% 
% 
% 
% 
% *************************************************************************

function Sensor_Data = Data_acquire()

%     ang =       Get_angle();
%     length1 =   Get_length(1);
%     length2 =   Get_length(2);
%     pressure1 = Get_pressure(1);
%     pressure2 = Get_pressure(2);
    %flow =      Get_flow();
    
%     fprintf('data read \n \r');

   s = instrfind('Tag','sweet_serial_of_mine');

   fprintf(s,'read');
   
   tic;
   msg=fread(s,10);
   
    
    disp(msg);
    disp(toc);
    fprintf('\n');
    flushinput(s);
    
    Sensor_Data = msg;



end
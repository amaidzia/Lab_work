%%*************************************************************************
% Set_v1(angle);
% Set the angle of value #1
% 
% 
% 
% 
% 
% *************************************************************************
function Set_v1(angle)
    
   
    ser = instrfind('Tag','sweet_serial_of_mine');
    
    angle = ceil(angle);
    angle = char(angle);
    fprintf(ser,['v1_' angle]);
    
    msg=fscanf(ser);
    fprintf(msg);
    fprintf('\n');


    
end
%%*************************************************************************
% Set_v4(angle);
% Set the angle of value #4
% 
% 
% 
% 
% 
% *************************************************************************
function Set_v4(angle)
    
   
    ser = instrfind('Tag','sweet_serial_of_mine');
    
    angle = ceil(angle);
    angle = char(angle);
    fprintf(ser,['v4_' angle]);
    
    
    msg=fscanf(ser);
    fprintf(msg);
    fprintf('\n');


    
end
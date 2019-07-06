%%*************************************************************************
% Set_v3(angle);
% Set the angle of value #3
% 
% 
% 
% 
% 
% *************************************************************************
function Set_v3(angle)
    
   
    ser = instrfind('Tag','sweet_serial_of_mine');
    
    angle = ceil(angle);
    angle = char(angle);
    fprintf(ser,['v3_' angle]);
    
    
    msg=fscanf(ser);
    fprintf(msg);
    fprintf('\n');


    
end
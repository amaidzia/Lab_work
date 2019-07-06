%%*************************************************************************
% Set_v2(angle);
% Set the angle of value #2
% 
% 
% 
% 
% 
% *************************************************************************
function Set_v2(angle)
    
   
    ser = instrfind('Tag','sweet_serial_of_mine');
    
    angle = ceil(angle);
    angle = char(angle);
    fprintf(ser,['v2_' angle]);
    
    msg=fscanf(ser);
    fprintf(msg);
    fprintf('\n');


    
end
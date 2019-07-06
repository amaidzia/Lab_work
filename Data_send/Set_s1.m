%%*************************************************************************
% Set_s1(state);
% Set the state of solenoid #1
% 
% 
% 
% 
% 
% *************************************************************************

function Set_s1(state)
    
    
    ser = instrfind('Tag','sweet_serial_of_mine');
    
    
    if(state == 0)
        fprintf(ser,'s1_off');
    elseif(state == 1)
        fprintf(ser,'s1_on');
    end
    
    msg=fscanf(ser);
    fprintf(msg);
    fprintf('\n');



end
%%*************************************************************************
% Set_s2(state);
% Set the state of solenoid #2
% 
% 
% 
% 
% 
% *************************************************************************

function Set_s2(state)
    
    
    ser = instrfind('Tag','sweet_serial_of_mine');
    
    
    if(state == 0)
        fprintf(ser,'s2_off');
    elseif(state == 1)
        fprintf(ser,'s2_on');
    end
    
    msg=fscanf(ser);
    fprintf(msg);
    fprintf('\n');


end
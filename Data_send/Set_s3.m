%%*************************************************************************
% Set_s3(state);
% Set the state of solenoid #3
% 
% 
% 
% 
% 
% *************************************************************************

function Set_s3(state)
    
    
    ser = instrfind('Tag','sweet_serial_of_mine');
    
    
    if(state == 0)
        fprintf(ser,'s3_off');
    elseif(state == 1)
        fprintf(ser,'s3_on');
    end

    msg=fscanf(ser);
    fprintf(msg);
    fprintf('\n');


end
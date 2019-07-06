%%*************************************************************************
% Set_c2(state);
% Set the state of coupler decoupler #2
% 
% 
% 
% 
% 
% *************************************************************************

function Set_c2(state)
    
    
    s1 = instrfind('Tag','sweet_serial_of_mine');
    
    
    if(state == 0)
        fprintf(s1,'c2d');
    elseif(state == 1)
        fprintf(s1,'c2e');
    end
    
    msg=fscanf(s1);
    fprintf(msg);
    fprintf('\n');



end
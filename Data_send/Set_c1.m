%%*************************************************************************
% Set_c1(state);
% Set the state of coupler decoupler #1
% 
% 
% 
% 
% 
% *************************************************************************

function Set_c1(state)
    
    
    s1 = instrfind('Tag','sweet_serial_of_mine');
    
    
    if(state == 0)
        fwrite(s1,'c1d');
    elseif(state == 1)
        fprintf(s1,'c1e');
    end
    tic;
   
%     if(s1.BytesAvailable > 0)
    msg=fread(s1,1);
%     fprintf('in fread loop')
%     flushinput(s1);
%     fprintf('%d',double(msg));
    disp(msg);
    disp(toc);
    fprintf('\n');
    flushinput(s1);
%    end
   
%     fprintf('out of loop');
    
    
end
%%*************************************************************************
%  length = Get_length();
% This file gets length
% 
% 
% 
% 
% *************************************************************************

function length = Get_length(i)
 out = zeros(1,10);

    s = instrfind('Tag','sweet_serial_of_mine');
    
    if(isvalid(s)==0)
        fprintf('Invalid serial port, called from get length');
    end
    
    if (i == 1)
    fprintf(s,'len1');
    elseif(i ==2)
    fprintf(s,'len2');
    end
    

    out = fscanf(s,'%d',10);
    
    length = length_mapping(out);

end
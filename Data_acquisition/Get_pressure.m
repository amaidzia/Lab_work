%%*************************************************************************
%  pressure = Get_pressure();
% This file gets pressure
% 
% 
% 
% 
% *************************************************************************

function pressure = Get_pressure(i)

    out = 0;
    s = instrfind('Tag','sweet_serial_of_mine');

    if(isvalid(s)==0)
        fprintf('Invalid serial port, called from get pressure');
    end
    
    if(i == 1)
    fprintf(s,'pre1');
	elseif(i == 2)
	fprintf(s, 'pre2');
	end
    
    out = fscanf(s,'%d');
    
    pressure = pressure_mapping(out);
end
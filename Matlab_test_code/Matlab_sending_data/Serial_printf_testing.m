
delete(instrfindall);
clear all


s = serial('COM7','DataBits',8,'Parity','none','StopBits',1);
set(s,'BaudRate',115200);
set(s,'Tag','sweet_serial_of_mine')
set(s,'Timeout',1);
%  s.ReadAsyncMode = 'manual';
fopen(s);

s1 = serial('COM3','DataBits',8,'Parity','none','StopBits',1);
set(s1,'BaudRate',115200);
set(s1,'Tag','The_other_serial')
set(s1,'Timeout',1);
%  s.ReadAsyncMode = 'manual';
fopen(s1);




outputs = [0,1,0,1,0,1,35,65,45,10];
% fprintf(s,'send');
% fprintf(s,'\n');

pause(0.001);
% flushinput(s);

s_out = char(outputs);

for i=0:10
% fprintf(s,s_out);

fwrite(s,s_out,'uint8');
fwrite(s1,s_out,'uint8');

% pause(0.001);
% msg=fread(s,10);
% msg = fscanf(s);

pause(3);
fprintf('\n rec msg:');
% disp(msg);
fprintf('\n')
% flushinput(s);

end

fclose(s);
fclose(s1);
 



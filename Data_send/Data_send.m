%%*************************************************************************
% Data_send(c1,c2,s1,s2,s3,s4,v1,v2,v3,v4,).m
% This file contains code for data sending. Here c1=coupler1,s1=solenoid1
% and v1=value1 and so on.
% 
% 
% 
% 
% *************************************************************************

function Data_send(outputs)

   s = instrfind('Tag','sweet_serial_of_mine');

   fprintf(s,'send');
   
  
   fwrite(s,outputs);
   
   tic;
   % msg=fread(s,10);
   
    
    disp(msg);
    disp(toc);
    fprintf('\n');
    flushinput(s);


%     Set_c1(c1);
%     Set_c2(c2);
%     Set_s1(s1);
%     Set_s2(s2);
%     Set_s3(s3);
%     Set_s4(s4);
%     Set_v1(v1);
%     Set_v2(v2);
%     Set_v3(v3);
%     Set_v4(v4);


end
%%*************************************************************************
%  Sensor_Data = Reassemble_data(msg).m
% This file contains code for data acquisition
% 
% 
% 
% 
% *************************************************************************







function Sensor_Data = Reassemble_data(msg)

angle =     256*msg(1)+msg(2); 
length1 =   256*msg(3)+msg(4);
length2 =   256*msg(5)+msg(6);
pressure1=  256*msg(7)+msg(8);
pressure2=  256*msg(9)+msg(10);

Sensor_Data = [angle length1 length2 pressure1 pressure2];


end
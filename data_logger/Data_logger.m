function Data_logger(Desired_traj,Sensor_Data,Arduino_Outputs,i,fid)

Time_period = 0.05;
time = i*Time_period;
current_angle = Sensor_Data(1);
desired_angle = Desired_traj(1);

fprintf(fid,'\n');
fprintf(fid,'%d,',Desired_traj);
fprintf(fid,'\t');
fprintf(fid,'%d,',Sensor_Data);
fprintf(fid,'\t');
fprintf(fid,'%d,',Arduino_Outputs);
fprintf(fid,'\n');

figure(1)
plot(time,current_angle,'r');
hold on
plot(time,desired_angle,'b');







end
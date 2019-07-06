%%*************************************************************************
%   Desired_traj    = Generate_desired_trajectory(i)
%  - Generate the desired values of the trajectory
%   
% 
% 
% 
% 
%**************************************************************************

 


function Desired_traj    = Generate_desired_trajectory(i)

    Time_period = 0.05;
    t = i*Time_period; % Time period for which the calculations are to be done
    
%%********************************************************************
%     TODO: remove this section when you know how to generate your desired
%     trajectory
    des_ang =90;     
    des_length1=1;  
    des_length2=2; 
	des_pressure1=3;
    des_pressure2=4;
%
%
% *********************************************************************    
%     Desired_traj(1) = des_ang;     
%     Desired_traj(2) = des_length1;  
%     Desired_traj(3) = des_length2 ; 
%     Desired_traj(4) = des_pressure1;     
%     Desired_traj(5) = des_pressure2;
    
Desired_traj =[des_ang des_length1 des_length2 des_pressure1 des_pressure2];
end
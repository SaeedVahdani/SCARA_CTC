function [cost, K]= Optimized_PID(K)

assignin('base','K',K);
a=sim('SCARA_Controller2021b.slx');
Error_Cost=a.get('Error_Cost');
cost=mean(sqrt(mean(Error_Cost.^2)))
K
end
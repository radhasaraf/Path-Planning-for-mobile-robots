function [ ] = poly_input_torque(t)
%%%PLOTS THE INPUT TORQUE TRAJECTORY
%Torque is considered as a second degree curve
for i = 1:t
   u(i) = (i-5)^2;
end

%Plot of Torque
subplot(1,3,1)
plot(1:t,u);
grid on
title('Input Torque');
xlabel('t');
ylabel('Torque');

end


%1st case: Case of RTR(Rotation in place, Trnaslation, Rotation in place)
%2nd case: Case of a Polynomial trajectory
%theta_initial is the initial value of angular displacement
% j is the moment of inertia
% t is time in seconds
%for 1st case:
%function [ ] = Plots(theta_initial, j, t, Tmag1, Tmag2)
%for 2nd case:
function [ ] = Plots(theta_initial, j, t)
x = [];
theta = [];
omega = []; 
for i = 1:t
    %int(expr,var,a,b)
    A = [1,i;0,1];
    %for 1st case:
    %[row1, row2] = integr(i, t, Tmag1, Tmag2);
    %for 2nd case:
    [row1, row2] = integr2(i);
    new_col = [theta_initial;0] + (1/j)*([row1;row2]);
    new_col = A*new_col;
    x = [x new_col];
    new_col1 = x(1,i);
    theta =  [theta new_col1];
    new_col2= x(2,i);
    omega = [omega new_col2];
end

%Plot of input torque
%for 1st case:
%const_input_torque(t, Tmag1, Tmag2);
%for 2nd case:
poly_input_torque(t);

%Plot of theta
subplot(1,3,2)
plot(1:t,theta);
grid on
title('Angular displacement');
xlabel('t');
ylabel('theta');

%Plot of omega
subplot(1,3,3)
plot(1:t,omega);
grid on
title('Angular velocity');
xlabel('t');
ylabel('omega');

end


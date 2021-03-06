function [ ] = const_input_torque(t, Tmag1, Tmag2)
%%%DEFINES CONSTANT TORQUE AND PLOTS THE SAME
%Assumption: Robot accelertes for t1 time, maintains constant ang/lin
%velocity from t1 to t2 time instants and finally decelerates for the
%remaining time from t2 to t time instants.
%here t1 = t/4, t2 = 3t/4
for i = 1:t
    if i<=(t/4)
          u(i) = Tmag1;
    elseif i>(t/4) & i<=(3*t/4)
          u(i) = 0;
    else
          u(i) = Tmag2;
    end
end
%Plot of Torque
subplot(1,3,1)
plot(1:t,u);
grid on
title('Input Torque');
xlabel('t');
ylabel('Torque');
end


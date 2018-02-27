%Tmag1, Tmag2 are the different magnitudes of constant torque.
%Tmag1 = Tmag2 implies equal acceleration and deceleartion times.
function [row1, row2] = integr(i,t, Tmag1, Tmag2)
%1st row element of integral column

%%function definition
fun11 = @(x) -Tmag1*x;
%fun12 = 0;
fun13 = @(x) -Tmag2*x;

if  i<=(t/4)
    row1 = integral(fun11,0,i);
elseif i>(t/4) & i<=(3*t/4)
    %ans = integral(fun11,0,t/4)+ integral(fun12,t/4,i);
    %integral(fun12,t/4,i) = 0, since torque is zero
    row1 = integral(fun11,0,t/4);
else
    row1 = integral(fun11,0,t/4)+ integral(fun13,3*t/4,i);
end

%2nd row element of integral column

%%function definition
fun21 = @(x) Tmag1 + 0*x;
%fun22 = 0;
fun23 = @(x) Tmag2 + 0*x;

if i<=(t/4)
   row2 = integral(fun21,0,i);
elseif i>(t/4) & i<=(3*t/4)
   %ans = integral(fun21,0,t/4)+ integral(fun22,t/4,i);
   %integral(fun12,t/4,i) = 0, since torque is zero
   row2 = integral(fun21,0,t/4);
else
   row2 = integral(fun21,0,t/4)+ integral(fun23,3*t/4,i);
end

end

   
   

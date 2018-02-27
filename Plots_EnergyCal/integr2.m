%Tmag1, Tmag2 are the different magnitudes of constant torque.
%Tmag1 = Tmag2 implies equal acceleration and deceleartion times.
function [row1, row2] = integr2(i)
%1st row element of integral column
row1 = -((i^4)/4 - 10*(i^3)/3 + 25*(i^2)/2);

%2nd row element of integral column
row2 = ((i^3)/3 - 5*i^2 + 25*i);

end




%% just to calculate the matrix of x 
clc
clear
M = input ('Please enter the value of M= ');
N = input ('Please enter the value of N= ');
dx = input ('Please enter the value of dx= ');
U = zeros (1,M-2);

for idx = 1 : M-2
    f = sin(dx *idx);
    U(1,idx) = f;
end
%fprintf('%g ', U);
len = (M-2) * (N-1);
b = zeros(len,1);
for idxM = 1:M-2
 
    if (idxM==1) 
    b(idxM,1) = U(1,idxM);
    else
        b(((idxM-1)*(N-1)+1),1) = U(1,idxM);
    end
end
%b // Uncomment this line to see the result of B
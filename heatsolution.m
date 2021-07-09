%Project 1: Solving the heat equation

function [U] = heatsolution(f,M,N,c,L,T)
dX = L/(M-1);
COL = zeros(N,1);
U2(1, 1:M-2) = f(dX*(1:M-2));
U1 = ones(M-2,N-1);
U1 = reshape(M-2,N-1);
U = [COL [U1;U2] COL];

end
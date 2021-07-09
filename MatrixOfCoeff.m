N = 3;
B = diag(ones(1,N)*4) + diag(ones(1,N-1),1) + diag(ones(1,N-1), -1);
C = zeros (N^2);
for k = 0:N-1
    for i = 1:N
        for j = 1:N
            C(i+k*N, j+k*N) = B(i, j);
        end
    end
end
A = C + diag(ones(1,N^2-N),N) + diag(ones(1,N^2-N), -N);

B = diag(ones(1,N)*4) + diag(ones(1,N-1)*-1,1) + diag(ones(1,N-1), -1)
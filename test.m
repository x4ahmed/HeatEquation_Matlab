%Number of unknowns, M points in (x) and N points in (y)
M = 3;
N = 3;

%Size of the Matrix
size = N*M;

%Coefficients of the matrix
c = 1;
dt = 1;
dx = 3;
A = 2*c*dt;
B = -4*c*dt;
C = dx^2;
D = -dx^2;

%Intial Zero square matrix with size (size x size)
Matrix = zeros(size);

%Main for loop
for i = 1:size
    
    %Coefficients of (i,j)
    Matrix(i,i) = B;
    
        if i+N <= size
            %Coefficients of (i+1,j)
            Matrix(i,i+N) = A;
        end
        if i-N >= 1
            %Coefficients of (i-1,j)
            Matrix(i,i-N) = A;
        end
        if i >= 2
            %Coefficients of (i,j-1)
            if mod(i-1,M) == 0
                Matrix(i,i-1) = 0;
            else
                Matrix(i,i-1) = C;
            end
            
        end
        if i<= size -1
            %Coefficients of (i,j+1)
            if mod(i,M) == 0
                Matrix(i,i+1) = 0;
            else
                Matrix(i,i+1) = D;
            end
            
        end
end
Matrix

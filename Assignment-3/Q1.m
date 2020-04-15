x = InfinityNorm([-2 1 0; 1 -2 1; 0 1 -1.5])
y = InfinityNorm([4 -1 0 1 0; -1 4 -1 0 1; 0 -1 4 -1 0; 1 0 -1 4 -1; 0 1 0 1 -4])

function N = InfinityNorm (A)
    N = norm(A, inf);
end
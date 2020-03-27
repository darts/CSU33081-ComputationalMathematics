[L, U] = LUdecompGauss([4 -1 3 2;-8 0 -3 -3.5;2 -3.5 10 3.75;-8 -4 1 -0.5])

function [L, U] = LUdecompGauss (A)
[x, y] = size(A)
if x <= 0 || x ~= y
    disp("Matrix Is Not Square!");
    return
end

L = eye(x, x);
U = A;

for i = 1:x
    for j = i + 1:x
        c = U(j, i) / U(i, i);
        for k = 1:x
            U(j, k) = U(j, k) - (c * U(i, k));
        end
        L(j, i) = c;
    end
end

end



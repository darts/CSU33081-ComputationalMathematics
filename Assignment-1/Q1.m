Determinant([1 5 4; 2 3 6; 1 1 1])
Determinant([1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16])

function D = Determinant (A)
    matrixSize = size(A);
    isInRange = ismember(matrixSize(1,1), [2 3 4]);
    if(matrixSize(1,1) ~= matrixSize(1,2) || ~isInRange(1,1))
        D = "The matrix must be square.";
        return
    end
    D= det(A);
    if(D < 0.000000000001 && D > -0.000000000001) %ignore floating point error
       D = 0;   
    end
end
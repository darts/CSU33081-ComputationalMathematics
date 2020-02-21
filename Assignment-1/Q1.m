Determinant([1 5 4; 2 3 6; 1 1 1])
Determinant([1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16])

function D = Determinant (A)
    matrixSize = size(A);
    isInRange = ismember(matrixSize(1,1), [2 3 4]);
    if(matrixSize(1,1) ~= matrixSize(1,2) || ~isInRange(1,1))
        D = "The matrix must be square.";
        return
    end
    D = detRecurse(A);
end

function detSum = detRecurse(mat)
    detSum = 0;
    matSize = size(mat);
    if matSize(1,1) ~= 2
        pos = true;
        for i = 1:matSize(1,1)
            tmpSum = mat(1,i)*detRecurse(getSubMat(mat, 1, i));
            if pos
                detSum = detSum + tmpSum;
            else
                detSum = detSum - tmpSum;
            end
            pos = ~pos;
        end
    else
        detSum = (mat(1,1)*mat(2,2))-(mat(2,1)*mat(1,2));
    end
end

function subMat = getSubMat(mat, row, col)    
    matSize = size(mat);
    rowVec = 1:matSize(1,1);
    colVec = 1:matSize(1,2);
    rowVec(row) = [];
    colVec(col) = [];
    subMat = mat(rowVec, colVec);
end


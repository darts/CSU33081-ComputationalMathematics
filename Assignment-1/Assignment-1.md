#  CSU33081: Computational Mathematics
## Assignment 1 - Senán d'Art - 17329580  

**Question 1**   
```matlab
function D = Determinant (A)
    matrixSize = size(A);
    isInRange = ismember(matrixSize(1,1), [2 3 4]);
    if(matrixSize(1,1) ~= matrixSize(1,2) || ~isInRange(1,1))
        D = "The matrix must be square.";
        return
    end
    D= det(A)
    Precision = 0.000000000001;
    if(D < Precision && D > -Precision) %ignore floating point errors
       D = 0;   
    end
end
```
(a) - (ii)  
(b) - (i)  

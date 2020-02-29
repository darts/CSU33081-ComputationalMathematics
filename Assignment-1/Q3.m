Inverse([-1 2 1; 2 2 -4; 0.2 1 0.5])
Inverse([-1 -2 1 2; 1 1 -4 -2; 1 -2 -4 -2; 2 -4 1 -2])

function Ainv =Inverse (A)
    matSize = size(A);
    if length(matSize) > 2 || matSize(1) ~= matSize(2)
        Ainv = "Matrix is not square";
       return  
    end
    
    Ainv = eye(matSize(1));
    for i = 1:matSize(1)
        for j = i:matSize(1) % get the next non-zero 
            if A(i,j) ~= 0 % we got one
                %swap rows
                tmp = A(i,:);
                A(i,:) = A(j,:);
                A(j,:) = tmp;
                
                tmpInv = Ainv(i,:);
                Ainv(i,:) = Ainv(j,:);
                Ainv(j,:) = tmpInv;
                break
            end
        end
        tmp = A(i,i);
        A(i,:) = A(i,:) / tmp;
        Ainv(i,:) = Ainv(i,:) / tmp;
        for j = 1:matSize(1)
           if j ~= i
              tmp = A(j,i);
              A(j,:) = A(j,:) - (A(i,:) * tmp);
              Ainv(j,:) = Ainv(j,:) - (Ainv(i,:) * tmp);
           end
        end
    end
end
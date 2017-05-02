function [ res ] = MSE(matrix1, matrix2 )
    res = mean2((matrix1 - matrix2).^2);
end


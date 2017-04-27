function [ res ] = MSE(matrix1, matrix2 )
%MSE Summary of this function goes here
%   Detailed explanation goes here
    dif = matrix1 - matrix2;    
    rnd = round(dif);   
    squared = rnd.^2;   
    s = sum(sum(squared));    
    res = s / (size(matrix1,1) * size(matrix1,2));   
end


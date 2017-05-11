function [ MAE ] = MAE( mt1, mt2 )
    [M1, N1] = size(mt1);
    [M2, N2] = size(mt2);
    if(M1 ~= M2 || N1 ~= N2) 
        throw(MException('MAE:incorrectSize', 'Incorrect size of matrixes'));
    end;   
    absDifs = abs(mt1 - mt2);
    MAE = sum(absDifs(:))/(M1*N1);
end


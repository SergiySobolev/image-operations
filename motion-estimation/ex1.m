I1 = im2double(imread('frame1.jpg'));
I2 = im2double(imread('frame2.jpg'));

Btarget = I2(65:96, 81:112);

[N,M] = size(I2);

minMAE = 1000;
minCoord = [-1,-1];

for i=1:N-31
    for j=1:M-31
        Bcurrent = I1(i:i+31, j:j+31);
        curMAE = MAE(Btarget, Bcurrent);
        if(minMAE > curMAE) 
            minMAE = curMAE;
            minCoord = [i,j];
        end;
    end;
end;    
minMAE = minMAE*255;
    
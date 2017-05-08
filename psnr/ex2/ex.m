I = imread('quiz.jpg');
DI = im2double(I);
h = ones(3,3) / 9;
FI = imfilter(DI, h, 'replicate');

DSFI = FI(1:2:end, 1:2:end);

I2 = zeros(359, 479);
% 
% for i=2:2:359
%    for j=2:2:479
%        newI = floor((i+1)/2);
%        newJ = floor((j+1)/2);    
%        I2(i,j) = DSFI(newI, newJ);
%    end;
% end;

I2 = upsample(upsample(DSFI,2)',2)'
I2 = I2(1:1:359,1:1:479)

h = [1/4 1/2 1/4; 1/2 1 1/2; 1/4 1/2 1/4;];
I2 = imfilter(I2, h);

display(PSNR(DI, I2, 1));
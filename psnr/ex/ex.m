I = imread('ex/in.gif');
DI = im2double(I);

h3 = ones(3)./9;
FI3 = imfilter(DI, h3, 'replicate');
psnr3 = PSNR(FI3, DI, 1);

h5 = ones(5)./25;
FI5 = imfilter(DI, h5, 'replicate');
psnr5 = PSNR(FI5, DI, 1);



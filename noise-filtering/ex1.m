noisy = im2double(imread('noisy.jpg'));
filtered = medfilt2(noisy);
filtered2 = medfilt2(filtered);
original =  im2double(imread('original.jpg'));

subplot(4,1,1),
imshow(noisy);
subplot(4,1,2),
imshow(filtered)
subplot(4,1,3),
imshow(filtered2);
subplot(4,1,4),
imshow(original);

PSNR1 = PSNR(original, filtered2, 1);
PSNR2 = PSNR(original, filtered, 1);
PSNR3 = PSNR(original, noisy, 1);
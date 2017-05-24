h = fspecial('disk',4);
cam = im2double(imread('cameramen.png'));
hf = fft2(h,size(cam,1),size(cam,2));
cam_blur = real(ifft2(hf.*fft2(cam)));
imshow(cam_blur);

hf_abs = abs(hf);
surf([-127:128]/128,[-127:128]/128,fftshift(cam_blur))
shading interp, camlight, colormap jet
xlabel('PSF FFT magnitude')
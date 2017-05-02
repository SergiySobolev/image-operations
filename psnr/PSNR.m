function res = PSNR(in1, in2)
    mse = MSE(in1, in2);
    res = 10*log10(255*255/mse);
end


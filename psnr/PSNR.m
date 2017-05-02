function res = PSNR(in1, in2, maxFluc)
    mse = MSE(in1, in2);
    res = 10*log10(maxFluc*maxFluc/mse);
end


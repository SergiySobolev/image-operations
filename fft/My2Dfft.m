function [ out ] = My2Dfft( in )

    [M,N] = size(in);
    out = zeros(M, N);    
    
    for u=1:M
        for v=1:N
            
            s = 0;
            for x=1:M
                for y=1:N
                    add = in(x,y) * exp(-1i*2*pi*(u*x/M + v*y/N)); 
                    s = s + add;                            
                end
            end
                         
            out(M-u+1,N-v+1) = s;
        end
    end
    

end


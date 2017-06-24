classdef Convolution
   
    properties
        signal
        impulseResponse
    end
    
    methods
        function obj = Convolution(s,ir)
              obj.signal = NullableVector(s);
              obj.impulseResponse = NullableVector(ir);
        end
        function r = doConvolution(obj)
            signalLength = size(obj.signal);           
            impulseResponseLength = size(obj.impulseResponse);  
            cl = signalLength + impulseResponseLength - 1;
            if signalLength == 0 || impulseResponseLength == 0
                r = zeros(1,cl+1);
            else 
                c = zeros(1,cl);
                for i=1:cl
                    for j=1:cl
                        signalValue = get(obj.signal,j);
                        irValue = get(obj.impulseResponse, i-j+1);
                        c(i) = c(i) + signalValue * irValue;
                    end
                end    
                r = c;
            end
        end 
        
        function r = doConvolution2(obj)
            signalNnv = NullableNegativeVector(obj.signal.value);
            irNnv = NullableNegativeVector(obj.impulseResponse.value);
            signalLength = size(signalNnv);
            irLength = size(irNnv);
            fIrNnv = flip(irNnv);
            x = [];
            for i=0:signalLength+irLength-2
                v = sum(multiply(signalNnv, shift(fIrNnv,i)));
                x = [x,v];
            end;
            r = x;
        end
    end
    
end


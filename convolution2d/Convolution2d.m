classdef Convolution2d
    
    properties
        signal
        impulseResponse
    end
    
    methods
        function obj = Convolution2d(signal, impulseResponse)
            obj.signal = signal;
            obj.impulseResponse = impulseResponse;
        end
        
        function r = doConvolution2d(signal, impulseResponse)
            r = [1 1;1 1];
        end
    end
    
end


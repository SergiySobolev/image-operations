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
    end
    
end


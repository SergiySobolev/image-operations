classdef Convolution
   
    properties
        signal
        impulseResponse
    end
    
    methods
        function obj = Convolution(s,ir)
              obj.signal = s;
              obj.impulseResponse = ir;
        end
        function r = doConvolution(obj)
            signalLength = size(obj.signal,2);           
            impulseResponseLength = size(obj.impulseResponse,2);            
            r = obj.signal;
        end
    end
    
end


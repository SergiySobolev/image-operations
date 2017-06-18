classdef NullableVector
    %NULLABLEVECTOR Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        value
    end
    
    methods
        function obj = NullableVector(value)
              obj.value = value;
        end
        function r = get(obj, n)
            l = numel(obj.value);
            if n<1
                r = 0;
            elseif n>l
                r = 0;
            else
                r = obj.value(n);
            end;    
        end
        
        function r = size(obj)
            r = length(obj.value);
        end;    
    end
    
    
end


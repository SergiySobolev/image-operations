classdef StemBounds    
    
    properties
        values
    end
    
    methods
        function obj = StemBounds(v)
              obj.values = v;
        end
        
        function r = bounds(obj)
            l = length(obj.values);
            mn = min(obj.values);
            mx = max(obj.values);
            apl = 0.2*(mx - mn);
            r = [-0.2*l 1.2*l mn-apl mx+apl];            
        end
    end
    
end


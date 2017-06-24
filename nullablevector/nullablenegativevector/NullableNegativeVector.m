classdef NullableNegativeVector
    %NULLABLENEGATIVEVECTOR vector that can have negative indexes
    %   Detailed explanation goes here
    
    properties
        x
        y
    end
    
    methods
          function obj = NullableNegativeVector(y)
              obj.y=y;
              obj.x=0:1:size(y,2)-1;
          end         
                   
          function r = get(obj, index)
                xindex = find(obj.x == index);
                if isempty(xindex) 
                    r = 0;
                else    
                    r = obj.y(xindex);
                end    
          end
          
          function r = flip(obj)
                obj.y = fliplr(obj.y);
                obj.x = -fliplr(obj.x);
                r = obj;
          end
          
          function r = shift(obj, step)
            obj.x = obj.x + step;
            r = obj;
          end
          
          function r = leftBound(obj)
             r = min(obj.x);   
          end
          
          function r = rightBound(obj)
             r = max(obj.x);   
          end
          
          function r = multiply(nnv1, nnv2)
             lb = min(leftBound(nnv1), leftBound(nnv2));
             rb = max(rightBound(nnv1), rightBound(nnv2));                      
             newY = [];
             for i=lb:rb                 
                 newY = [newY, get(nnv1,i)*get(nnv2,i)];
             end;
             nnv = NullableNegativeVector(newY);
             nnv = shift(nnv, lb);
             r = nnv;
          end
          
          function r = add(nnv1, nnv2)
             lb = min(leftBound(nnv1), leftBound(nnv2));
             rb = max(rightBound(nnv1), rightBound(nnv2));                      
             newY = [];
             for i=lb:rb                 
                 newY = [newY, get(nnv1,i)+get(nnv2,i)];
             end;
             nnv = NullableNegativeVector(newY);
             nnv = shift(nnv, lb);
             r = nnv;
          end
    end
    
    
    
end


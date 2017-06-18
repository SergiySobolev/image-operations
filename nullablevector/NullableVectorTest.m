classdef NullableVectorTest < matlab.unittest.TestCase
    %NULLABLEVECTORTEST Summary of this class goes here
    %   Detailed explanation goes here
    
     methods (Test)
        function test(testCase)
            nv = NullableVector([1,2,3,4]);  
            testCase.verifyEqual(get(nv,-1),0);
            testCase.verifyEqual(get(nv,0),0);
            testCase.verifyEqual(get(nv,1),1);
            testCase.verifyEqual(get(nv,2),2);
            testCase.verifyEqual(get(nv,3),3);
            testCase.verifyEqual(get(nv,4),4);
            testCase.verifyEqual(get(nv,5),0);
            testCase.verifyEqual(get(nv,6),0);
            testCase.verifyEqual(size(nv),4);
        end 
       
    end
    
end


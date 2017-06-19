classdef NullableNegativeVectorTest < matlab.unittest.TestCase
        
    methods(Test)
        function createNNVAndcheckXandY(testCase)
            nnv = NullableNegativeVector([1,2,3,4,5]);
            testCase.verifyEqual(nnv.x,[0,1,2,3,4]);
            testCase.verifyEqual(nnv.y,[1,2,3,4,5]);
        end
        function createNNVAndCheckGet(testCase)
             nnv = NullableNegativeVector([1,2,3,4,5]);
             testCase.verifyEqual(get(nnv,0),1);
             testCase.verifyEqual(get(nnv,1),2);
             testCase.verifyEqual(get(nnv,2),3);
             testCase.verifyEqual(get(nnv,3),4);
             testCase.verifyEqual(get(nnv,4),5);
             testCase.verifyEqual(get(nnv,5),0);
             testCase.verifyEqual(get(nnv,-1),0);
        end
    end
    
end


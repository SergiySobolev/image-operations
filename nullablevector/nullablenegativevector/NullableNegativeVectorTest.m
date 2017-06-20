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
        function flipAndCheckGet(testCase)
            nnv = NullableNegativeVector([1,2,3,4,5]);
            flippedNnv = flip(nnv);
            testCase.verifyEqual(flippedNnv.x,[-4,-3,-2,-1,0]);
            testCase.verifyEqual(flippedNnv.y,[5,4,3,2,1]);
            testCase.verifyEqual(get(flippedNnv,0),1);
            testCase.verifyEqual(get(flippedNnv,-1),2);
            testCase.verifyEqual(get(flippedNnv,-2),3);
            testCase.verifyEqual(get(flippedNnv,-3),4);
            testCase.verifyEqual(get(flippedNnv,-4),5);
            testCase.verifyEqual(get(flippedNnv,-5),0);
            testCase.verifyEqual(get(flippedNnv,1),0);
        end;
    end
    
end


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
        function flipTwoTimesAndCheckGet(testCase)
            nnv = NullableNegativeVector([1,2,3,4,5]);
            flippedNnv = flip(nnv);
            flippedSecondTimeNNV = flip(flippedNnv);
            testCase.verifyEqual(flippedSecondTimeNNV.x,[0,1,2,3,4]);
            testCase.verifyEqual(flippedSecondTimeNNV.y,[1,2,3,4,5]);
            testCase.verifyEqual(get(flippedSecondTimeNNV,0),1);
            testCase.verifyEqual(get(flippedSecondTimeNNV,1),2);
            testCase.verifyEqual(get(flippedSecondTimeNNV,2),3);
            testCase.verifyEqual(get(flippedSecondTimeNNV,3),4);
            testCase.verifyEqual(get(flippedSecondTimeNNV,4),5);
            testCase.verifyEqual(get(flippedSecondTimeNNV,5),0);
            testCase.verifyEqual(get(flippedSecondTimeNNV,6),0);
            testCase.verifyEqual(get(flippedSecondTimeNNV,-1),0);
        end;
        
        function shiftBy2ThenByNegative3(testCase)
             nnv = NullableNegativeVector([1,2,3,4,5]);
             shiftedNnvByTwo = shift(nnv, 2);
             testCase.verifyEqual(shiftedNnvByTwo.x,[2,3,4,5,6]);
             testCase.verifyEqual(shiftedNnvByTwo.y,[1,2,3,4,5]);
             shiftedNnvByNegativeThree = shift(shiftedNnvByTwo, -3);
             testCase.verifyEqual(shiftedNnvByNegativeThree.x,[-1,0,1,2,3]);
             testCase.verifyEqual(shiftedNnvByNegativeThree.y,[1,2,3,4,5]);
        end;
        
        function shiftByNegative2AndFlip(testCase)
             nnv = NullableNegativeVector([1,2,3,4,5]);
             shiftedNnvByTwo = shift(nnv, -2);
             shiftedNnvByTwoAndFlippedNnv = flip(shiftedNnvByTwo);
             testCase.verifyEqual(shiftedNnvByTwoAndFlippedNnv.x,[-2,-1,0,1,2]);
             testCase.verifyEqual(shiftedNnvByTwoAndFlippedNnv.y,[5,4,3,2,1]);            
        end;
        
        function getLeftOrdinateTest(testCase)
             nnv = NullableNegativeVector([1,2,3,4,5]);
             testCase.verifyEqual(getLeftOrdinate(nnv), 0); 
             nnv = shift(nnv, -2);
             testCase.verifyEqual(getLeftOrdinate(nnv), -2);
             nnv = flip(nnv);
             testCase.verifyEqual(getLeftOrdinate(nnv), -2);
             nnv = shift(nnv, -3);
             testCase.verifyEqual(getLeftOrdinate(nnv), -5);
             nnv = flip(nnv);      
             testCase.verifyEqual(getLeftOrdinate(nnv), 1);
        end;
        
        function getRightOrdinateTest(testCase)
             nnv = NullableNegativeVector([1,2,3,4,5]);
             testCase.verifyEqual(getRightOrdinate(nnv), 4); 
             nnv = shift(nnv, -2);
             testCase.verifyEqual(getRightOrdinate(nnv), 2);
             nnv = flip(nnv);
             testCase.verifyEqual(getRightOrdinate(nnv), 2);
             nnv = shift(nnv, -3);
             testCase.verifyEqual(getRightOrdinate(nnv), -1);
             nnv = flip(nnv);      
             testCase.verifyEqual(getRightOrdinate(nnv), 5);
        end;
        
       
    end
    
end


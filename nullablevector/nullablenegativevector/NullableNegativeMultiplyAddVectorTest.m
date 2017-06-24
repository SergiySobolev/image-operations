classdef NullableNegativeMultiplyAddVectorTest  < matlab.unittest.TestCase     
    methods(Test)
        function sameLengthMultipliers(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             prod = multiply(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[1,4,9,16,25]);
        end;
         
        function crossingMultipliers1(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = shift(nnv2, -3);
             prod = multiply(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[-3,-2,-1,0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[0,0,0,4,10,0,0,0]);
        end;
        
        function crossingMultipliers2(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = shift(nnv2, -2);
             prod = multiply(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[-2,-1,0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[0,0,3,8,15,0,0]);
        end;
        
         function crossingMultipliers3(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = shift(nnv2, -4);
             prod = multiply(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[-4,-3,-2,-1,0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[0,0,0,0,5,0,0,0,0]);
        end;
        
        function nonCrossingMultipliers2(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = shift(nnv2, -5);
             prod = multiply(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[-5,-4,-3,-2,-1,0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[0,0,0,0,0,0,0,0,0,0]);
        end;
        
        function sameLengthConjunctions(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             prod = add(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[2,4,6,8,10]);
        end;
        
        function crossingConjuctions1(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = shift(nnv2, -2);
             prod = add(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[-2,-1,0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[1,2,4,6,8,4,5]);
        end;
        
        function crossingConjuctions2(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = shift(nnv2, -3);
             prod = add(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[-3,-2,-1,0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[1,2,3,5,7,3,4,5]);
        end;
        
        function nonCrossingConjuctions1(testCase)
             nnv1 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = NullableNegativeVector([1,2,3,4,5]);
             nnv2 = shift(nnv2, -6);
             prod = add(nnv1, nnv2);
             testCase.verifyEqual(prod.x,[-6,-5,-4,-3,-2,-1,0,1,2,3,4]);
             testCase.verifyEqual(prod.y,[1,2,3,4,5,0,1,2,3,4,5]);
        end;
    end    
end


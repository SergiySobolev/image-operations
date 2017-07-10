classdef Convolution2DTest < matlab.unittest.TestCase
      
    methods(Test) 
        function doConvolution2dtest1(testCase)    
            signal = [1 2 3; 4 5 6; 7 8 9];      
            ir = [1 1 1; 1 1 1; 1 1 1];
            c2d = Convolution2d(signal, ir);
            actualResult = doConvolution2d(c2d);
            expectedResult = [1     3     6     5     3;
                              5     12    21    16     9;
                              12    27    45    33    18;
                              11    24    39    28    15;
                              7     15    24    17     9];
            testCase.verifyEqual(actualResult, expectedResult); 
        end
    end
    
end


classdef ConvolutionTest < matlab.unittest.TestCase
    %CONVOLUTIONTEST Tests for Convolution class
    %   Detailed explanation goes here
    
    methods (Test)
        function testRealSolution(testCase)
            c = Convolution([1,1,1], [1,-2,3]);          
            actSolution = doConvolution(c);         
            expSolution = [1,1,1];
            testCase.verifyEqual(actSolution,expSolution)
        end 
    end
    
end


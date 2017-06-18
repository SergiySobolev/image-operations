classdef ConvolutionTest < matlab.unittest.TestCase
    %CONVOLUTIONTEST Tests for Convolution class
    %   Detailed explanation goes here
    
    methods (Test)
        function test1(testCase)
            c = Convolution([1,1,1], [1,-2,3]);          
            actSolution = doConvolution(c);         
            expSolution =  conv([1,1,1], [1,-2,3]);
            testCase.verifyEqual(actSolution,expSolution)
        end 
        function test2(testCase)
            c = Convolution([1,1,1], [-1,-1,1]);          
            actSolution = doConvolution(c);         
            expSolution = conv([1,1,1], [-1,-1,1]);
            testCase.verifyEqual(actSolution,expSolution);            
        end 
    end
    
end


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
        function generalTest(testCase)
            s = randperm(15,5);
            ir = randperm(15,3);
            c = Convolution(s, ir);          
            actSolution = doConvolution(c);         
            expSolution = conv(s, ir);
            testCase.verifyEqual(actSolution,expSolution);            
        end 
        function emptyVectorTest(testCase)
            s = randperm(15,0);
            ir = randperm(15,3);
            c = Convolution(s, ir);          
            actSolution = doConvolution(c);         
            expSolution = conv(s, ir);
            testCase.verifyEqual(actSolution,expSolution);
        end   
        function doConvolution2test1(testCase)
            c = Convolution([1,1,1], [1,-2,3]);          
            actSolution = doConvolution2(c);         
            expSolution =  conv([1,1,1], [1,-2,3]);
            testCase.verifyEqual(actSolution,expSolution)
        end 
        function generalTestConvolution2(testCase)
            s = randperm(15,5);
            ir = randperm(15,3);
            c = Convolution(s, ir);          
            actSolution = doConvolution2(c);         
            expSolution = conv(s, ir);
            testCase.verifyEqual(actSolution,expSolution);            
        end 
        function emptyVectorTestConvolution2(testCase)
            s = randperm(15,0);
            ir = randperm(15,3);
            c = Convolution(s, ir);          
            actSolution = doConvolution(c);         
            expSolution = conv(s, ir);
            testCase.verifyEqual(actSolution,expSolution);
        end  
        function test2doConvolution2(testCase)
            c = Convolution([1,1,1], [-1,-1,1]);          
            actSolution = doConvolution2(c);         
            expSolution = conv([1,1,1], [-1,-1,1]);
            testCase.verifyEqual(actSolution,expSolution);            
        end 
    end
    
end


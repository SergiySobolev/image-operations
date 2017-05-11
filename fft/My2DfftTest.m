function tests = My2DfftTest
    tests = functiontests(localfunctions);
end

function test1(testCase)
    m = [1,-1,1; -1,1,-1; 1,-1,1; -1,1,-1; 1,-1,1;]; 
    actSolution = My2Dfft(m);  
    expSolution = fft2(m);
    verifyEqual(testCase,actSolution,expSolution,'AbsTol', 0.001);
end

function test2(testCase)
    m = [1,-1,1; -1,1,-1; 1,-1,1;]; 
    actSolution = My2Dfft(m);  
    expSolution = fft2(m);
    verifyEqual(testCase,actSolution,expSolution,'AbsTol', 0.001);
end

% function test3(testCase)
%     m = [1,1,1; 2,2,2; 3,3,3; 4,4,4; 5,5,5]; 
%     actSolution = My2Dfft(m);  
%     expSolution = fft2(m);
%     verifyEqual(testCase,actSolution,expSolution,'AbsTol', 0.001);
% end



% function test3(testCase)  
%     m = [1,2,3; 
%         4,5,6;
%         7,8,9;
%         10,11,12];
%     actSolution = My2Dfft(m);
%    
%     expSolution = fft(fft(m).');
%     expSolution = fft2(m);
%     verifyEqual(testCase,actSolution,expSolution,'AbsTol', 0.001);
% end



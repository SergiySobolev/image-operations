function tests = MSETest
    tests = functiontests(localfunctions);
end

function test1(testCase)
    m1 = [1.1, 1.1; 2.2, 2.2];
    m2 = [1,1;2,2];
    actSolution = MSE(m1,m2);
    expSolution = 0;
    verifyEqual(testCase,actSolution,expSolution);
end

function test2(testCase)
    m1 = [1.1, 1.1; 1.2, 2.2];
    m2 = [1,1;2,2];
    actSolution = MSE(m1,m2);
    expSolution = 1/4;
    verifyEqual(testCase,actSolution,expSolution);    
end


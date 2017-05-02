function tests = MSETest
    tests = functiontests(localfunctions);
end

function test1(testCase)
    m1 = [1.1, 1.1; 2.2, 2.2];
    m2 = [1,1;2,2];
    actSolution = MSE(m1,m2);
    expSolution = 0.025;
    verifyEqual(testCase,actSolution,expSolution,'AbsTol', 0.001);
end

function test2(testCase)
    m1 = [1.1, 1.1; 1.2, 2.2];
    m2 = [1,1;2,2];
    actSolution = MSE(m1,m2);
    expSolution = 0.175;
    verifyEqual(testCase,actSolution,expSolution, 'AbsTol', 0.001);    
end


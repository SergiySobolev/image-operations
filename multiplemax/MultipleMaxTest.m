function tests = MultipleMaxTest
    tests = functiontests(localfunctions);
end

function test1(testCase)
    m1 = [1.1, 1.1; 2.2, 2.2];
    m2 = [1,1;2,2];
    actSolution = MultipleMax(m1,m2);
    expSolution = 2.2;
    verifyEqual(testCase,actSolution,expSolution);
end

function test2(testCase)
    m1 = [1.1, 1.1; 1.2, 2.2];
    m2 = [1,1; 2,3];
    actSolution = MultipleMax(m1,m2);
    expSolution = 3;
    verifyEqual(testCase,actSolution,expSolution);    
end

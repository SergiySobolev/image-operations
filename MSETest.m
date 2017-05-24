function tests = MSETest
tests = functiontests(localfunctions);
end

function test1(testCase)
m1 = [1 2; 3 4;];
m2 = [3 4; 8 7;];

actSolution = MSE(m1, m2);
expSolution = 10.5;
verifyEqual(testCase,actSolution,expSolution)
end
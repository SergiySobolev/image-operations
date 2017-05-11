function tests = MAETest
    tests = functiontests(localfunctions);
end

function test1(testCase)   
    verifyError(testCase, @callWithMatrixesWithIncorrectSize, 'MAE:incorrectSize', 'Incorrect size of matrixes');
end

function callWithMatrixesWithIncorrectSize
    m1 = [1.1, 1.1; 2.2, 2.2];
    m2 = [1,1,1;2,2,2];  
    MAE(m1,m2);
end

function test2(testCase)
     m1 = [
          1,1,2,2;
          1,1,2,2;
          2,2,3,4;
          2,2,5,6;
          ];
    m2 = [
          2,2,1,1;
          1,1,1,1;
          2,2,6,4;
          2,2,5,3;
          ];
    actSolution = MAE(m1, m2);
    expSolution = 0.75;
    verifyEqual(testCase,actSolution,expSolution, 'AbsTol', 0.001); 
end
MSEResults = runtests('MSETest.m');

MAEResults = runtests('MAETest.m');

MultipleMaxResults = runtests('MultipleMaxTest.m');

My2DfftResults = runtests('My2DfftTest.m');

NullableVectorResults = run(NullableVectorTest);

NullableNegativeVectorResults = run(NullableNegativeVectorTest);

NullableNegativeMultiplyAddVectorTestResults = run(NullableNegativeMultiplyAddVectorTest);

ConvolveTestResults = run(ConvolutionTest);

ConvolveTest2DResults = run(Convolution2DTest);



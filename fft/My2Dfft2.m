function [ X ] = My2Dfft2( x )

if(nargin == 1)
N = length(x);
end


% Check if we're supplying a row vector. If we are,
% the transpose as a column for the matrix multiplication.
dim = size(x,2);
if(dim ~= 1)
x = x.'; % Make sure we don't conjugate
end

% Create indices for DFT matrix
% First create values of K
ind = 0:(N-1);
ind = ind(ones(1,N),:);

% Now create values of N
ind2 = ind.';

% Create DFT matrix
DN = exp(-1j*2*pi*ind.*ind2/N);

% Calculate N-pt DFT
X = DN * x;
X = X.';

% Sweet... no for loops!
end 




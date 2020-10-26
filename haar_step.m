%
% Function to compute the coefficients of a sequence u of length 2^n
% over the Haar basis. Takes the number of averaging steps as parameter
% (level of recursion)
%  
%
function c = haar_step(u,numstep)
    c = u;
    for i = 1:numstep
       c = haar(c);
    end
end

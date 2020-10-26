%
%  Program to compute the coefficients of a sequence of length 2^n given its
%  coefficients over the Haar basis; takes the number of averaging steps
%  as parameter (level of recursion)
%    

function u = haar_inv_step(c,numstep)
    u = c;
    for i = 1:numstep
       u = haar_inv(u);
    end
end

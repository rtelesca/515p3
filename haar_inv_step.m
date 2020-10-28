%
%  Program to compute the coefficients of a sequence of length 2^n given its
%  coefficients over the Haar basis; takes the number of averaging steps
%  as parameter (level of recursion)
%    

function u = haar_inv_step(c,numstep)
    m = size(c, 2);
    n = log2(m);
    if (abs(round(n) - n) > .000001)
         disp('vector dimension is not a power of 2');
         u = -1;
    else
        
        tempu = c;
        
        for j = (n - numstep):(n - 1)
           changeu = tempu;
           for i = 1:(2^j)
                changeu(1, 2*i - 1) = tempu(i) + tempu(2^j + i);
                changeu(1, 2*i) = tempu(i) - tempu(2^j + i);
           end
           tempu = changeu;
        end
        u = tempu;
    end
end

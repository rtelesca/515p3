%
% Function to compute the coefficients of a sequence u of length 2^n
% over the Haar basis. 
%
function c = haar(u)
    m = size(u, 2);
    n = log2(m);
    if (abs(round(n) - n) > .000001)
         disp('vector dimension is not a power of 2');
         c = -1;
    else
        cn = u;

        tempc = cn;
        
        for j = (n - 1):-1:0
           changec = tempc;
           for i = 1:(2^j)
                changec(1, i) = (tempc(2*i - 1) + tempc(2*i))/2;
                changec(1, 2^j + i) = (tempc(2*i - 1) - tempc(2*i))/2;
           end
           tempc = changec;
        end
        c = tempc;
    end
end

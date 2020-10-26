%
% plots a piecewise linear function corresponding to 
% a vector u = (u_1, ..., u_n)
%

function drawplfn(u)
    m = size(u, 2);
    x = zeros(1, m*2);
    y = zeros(1, m*2);
    for i=1:m
        x(2*i - 1) = (i-1)/m;
        x(2*i) = i/m;
        y(2*i - 1) = u(i);
        y(2*i) = u(i);
    end
    plot(x, y, 'r');
end

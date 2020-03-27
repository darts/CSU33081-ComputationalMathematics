population = [400, 557, 825, 981, 1135, 1266, 1370];
time = [1900, 1950, 1970, 1980, 1990, 2000, 2010];

[a1, a0] = LinearReg(time, log(population));
years = 1900:5:2020;
plot(years, exp(a0) * exp(a1 * years), time, population, 'ro')

function [a1, a0] = LinearReg(x,y)
    nx=length(x);
    ny=length(y);
    if nx ~= ny
        disp('ERROR: The number of elements in x must be the same as in y.');
        a1 = 'Error';
        a0 = 'Error';
    else
        Sx = sum(x);
        Sy = sum(y);
        Sxy = sum(x.*y);
        Sxx = sum(x.^2);
        a1 = (nx*Sxy-Sx*Sy)/(nx*Sxx-Sx^2);
        a0 = (Sxx*Sy-Sxy*Sx)/(nx*Sxx-Sx^2);
    end
end
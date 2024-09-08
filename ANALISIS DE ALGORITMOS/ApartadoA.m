
function p = ApartadoA(x)
    x=[1,7];
    if x >= -2  &   x<2;
        p = x^2 - 1;  
    else
        p = 1 ./ abs(x); 
    end
end


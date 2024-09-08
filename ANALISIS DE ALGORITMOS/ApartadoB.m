function ApartadoB = g(x)
    % Comprobamos si x es un escalar o vector
    x=1;
    if length(x) == 1
        % Evaluamos la función f(x) en un escalar
        ApartadoB = f(x);
    elseif length(x) == 2
        % Usamos fplot para graficar la función en el rango [min(x), max(x)]
        fplot(@f, [min(x), max(x)]);  % Cambiamos 'f' por @f para pasar el handle de la función
        ApartadoB = [];  % Devolvemos un valor vacío ya que solo queremos graficar
    else
        % Si x tiene más de 2 elementos, lanzamos un error
        error('La función no está preparada para manejar vectores con más de 2 elementos');
    end
end

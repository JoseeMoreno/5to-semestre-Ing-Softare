function ApartadoB = g(x)
    % Comprobamos si x es un escalar o vector
    x=1;
    if length(x) == 1
        % Evaluamos la funci�n f(x) en un escalar
        ApartadoB = f(x);
    elseif length(x) == 2
        % Usamos fplot para graficar la funci�n en el rango [min(x), max(x)]
        fplot(@f, [min(x), max(x)]);  % Cambiamos 'f' por @f para pasar el handle de la funci�n
        ApartadoB = [];  % Devolvemos un valor vac�o ya que solo queremos graficar
    else
        % Si x tiene m�s de 2 elementos, lanzamos un error
        error('La funci�n no est� preparada para manejar vectores con m�s de 2 elementos');
    end
end

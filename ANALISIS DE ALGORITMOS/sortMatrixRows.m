function sortedMatrix = sortMatrixRows(matrix)
    % Esta funci�n toma una matriz como entrada y devuelve una nueva matriz
    % donde cada fila est� ordenada en orden ascendente.
    
    % Obtener el tama�o de la matriz (n�mero de filas y columnas)
    tic;
    [rows, ~] = size(matrix);
    
    % Inicializar la matriz de salida con ceros del mismo tama�o que la matriz de entrada
    sortedMatrix = zeros(size(matrix));
    
    % Iterar sobre cada fila de la matriz
    for i = 1:rows
        % Mostrar la fila original antes de ordenar
        fprintf('Fila original %d: ', i);
        disp(matrix(i, :));
        
        % Ordenar la fila actual usando la funci�n integrada sort
        sortedRow = sort(matrix(i, :));
        
        % Almacenar la fila ordenada en la matriz de salida
        sortedMatrix(i, :) = sortedRow;
        
        % Mostrar la fila ordenada despu�s de ordenar
        fprintf('Fila ordenada %d: ', i);
        disp(sortedRow);
        elapsedTime = toc;

        fprintf('El tiempo transcurrido para ordenar las filas es: %.2f segundos\n', elapsedTime);

    end
end

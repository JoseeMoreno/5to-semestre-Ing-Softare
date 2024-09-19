% Generar un arreglo aleatorio de 100 n�meros
array = randi([1, 100], 1, 100);

% Mostrar el arreglo antes del ordenamiento
disp('Arreglo antes del ordenamiento:');
disp(array);

% Graficar el arreglo antes del ordenamiento
figure;
subplot(2,1,1);
plot(array, '.');
title('Arreglo antes del ordenamiento');


% Funci�n InsertionSort
sortedArray = insertionSort(array);

% Mostrar el arreglo despu�s del ordenamiento
disp('Arreglo despu�s del ordenamiento:');
disp(sortedArray);

% Graficar el arreglo despu�s del ordenamiento
subplot(2,1,2);
plot(sortedArray, '.');
title('Arreglo despu�s del ordenamiento');


% Funci�n InsertionSort
function sortedArray = insertionSort(arr)
    % insertionSort Ordena un arreglo utilizando el algoritmo de inserci�n
    sortedArray = arr;
    n = length(sortedArray);
    % Iterar desde el segundo elemento hasta el final del arreglo
    for i = 2:n
        key = sortedArray(i); % Elemento a insertar
        j = i - 1;
        % Mover los elementos mayores que 'key' una posici�n hacia la derecha
        while j >= 1 && sortedArray(j) > key
            sortedArray(j + 1) = sortedArray(j);
            j = j - 1;
        end
        % Insertar el elemento en la posici�n correcta
        sortedArray(j + 1) = key;
    end
end

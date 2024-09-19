% Generar un arreglo aleatorio de 100 números
array = randi([1, 100], 1, 100);

% Mostrar el arreglo antes del ordenamiento
disp('Arreglo antes del ordenamiento:');
disp(array);

% Graficar el arreglo antes del ordenamiento
figure;
subplot(2,1,1);
plot(array, '.');
title('Arreglo antes del ordenamiento');


% Función InsertionSort
sortedArray = insertionSort(array);

% Mostrar el arreglo después del ordenamiento
disp('Arreglo después del ordenamiento:');
disp(sortedArray);

% Graficar el arreglo después del ordenamiento
subplot(2,1,2);
plot(sortedArray, '.');
title('Arreglo después del ordenamiento');


% Función InsertionSort
function sortedArray = insertionSort(arr)
    % insertionSort Ordena un arreglo utilizando el algoritmo de inserción
    sortedArray = arr;
    n = length(sortedArray);
    % Iterar desde el segundo elemento hasta el final del arreglo
    for i = 2:n
        key = sortedArray(i); % Elemento a insertar
        j = i - 1;
        % Mover los elementos mayores que 'key' una posición hacia la derecha
        while j >= 1 && sortedArray(j) > key
            sortedArray(j + 1) = sortedArray(j);
            j = j - 1;
        end
        % Insertar el elemento en la posición correcta
        sortedArray(j + 1) = key;
    end
end

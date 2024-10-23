% Cargar la imagen de Lena
lena = imread('lena.tif'); 



% Mostrar la imagen original
subplot(2,3,1);
imshow(lena);
title('Original');


% Extraer y mostrar una subimagen (boca)
subplot(2,3,2);
boca = lena(330:380, 270:320, :); % Extraer una subimagen específica
imshow(boca);
title('Boca');

% Verificar el tipo de dato
tipo_dato = class(boca);
disp(tipo_dato);

% Extraer el canal 3 (azul) de la imagen
azul = lena(:,:,3);
subplot(2,3,3);
imshow(azul);
title('Azul');

%Convertirlo a tipo double con im2double
azul_double = im2double(azul);

% Mostrar el tipo de dato
disp(class(azul_double)); 

subplot(2,3,4);
imshow(azul_double);
title('Azul Double');

% Convertir el canal 3 a double usando la función double
azul_double_directo = double(azul);
subplot(2,3,5);
imshow(azul_double);
title('Azul Double Directo');

% Comparar ambos resultados
es_igual = isequal(azul_double, azul_double_directo);
disp(es_igual);  % Mostrará 0 (falso) porque no son iguales

% Verificar las diferencias
max_diff = max(abs(azul_double(:) - azul_double_directo(:)));
disp(['Máxima diferencia: ', num2str(max_diff)]);

% Crear tres capas aleatorias de tamaño 300x300
C1 = rand(300);  % Capa 1
C2 = rand(300);  % Capa 2
C3 = rand(300);  % Capa 3

% Combinar las capas en una imagen
imagen_random = cat(3, C1, C2, C3);

% Mostrar la imagen
subplot(2,3,6);
imshow(imagen_random);
title('Imagen Aleatoria');

% Mostrar el histograma de cada capa
figure;
subplot(3,1,1);
histogram(C1); title('Histograma de la Capa 1');

subplot(3,1,2);
histogram(C2); title('Histograma de la Capa 2');

subplot(3,1,3);
histogram(C3); title('Histograma de la Capa 3');

% ¿Qué sucede si realizamos la ecualización de estas capas?
C1_eq = histeq(C1);
C2_eq = histeq(C2);
C3_eq = histeq(C3);

% Mostrar los histogramas después de la ecualización
figure;
subplot(3,1,1);
histogram(C1_eq); title('Histograma de la Capa 1 Ecualizada');

subplot(3,1,2);
histogram(C2_eq); title('Histograma de la Capa 2 Ecualizada');

subplot(3,1,3);
histogram(C3_eq); title('Histograma de la Capa 3 Ecualizada');




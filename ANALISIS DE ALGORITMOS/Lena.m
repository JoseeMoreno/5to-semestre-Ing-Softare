% Cargar la imagen
I = imread('tigy.jpg');

% Mostrar la imagen original
subplot(2,3,1);
imshow(I);
%title('Original');

% Mostrar solo el canal rojo
subplot(2,3,4);
R = I; % Crear una copia de la imagen
R(:,:,2) = 0; % Eliminar el canal verde
R(:,:,3) = 0; % Eliminar el canal azul
imshow(R);
%title('Rojos');

% Mostrar solo el canal verde
subplot(2,3,5);
G = I; % Crear una copia de la imagen
G(:,:,1) = 0; % Eliminar el canal rojo
G(:,:,3) = 0; % Eliminar el canal azul
imshow(G);
%title('Verdes');

% Mostrar solo el canal azul
subplot(2,3,6);
B = I; % Crear una copia de la imagen
B(:,:,1) = 0; % Eliminar el canal rojo
B(:,:,2) = 0; % Eliminar el canal verde
imshow(B);
%title('Azules');

% Extraer y mostrar una subimagen (ojos, por ejemplo)
subplot(2,3,3);
subImage = I(400:550, 1100:1400, :); % Extraer una subimagen específica
imshow(subImage);
imwrite(subImage, 'trozo_tigy.jpg'); % Guardar la subimagen
%title('Subimagen (Ojos)');




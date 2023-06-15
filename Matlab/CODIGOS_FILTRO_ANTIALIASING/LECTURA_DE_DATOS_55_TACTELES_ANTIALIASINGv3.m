%% SCRIPT PARA LECTURA DE DATOS DE LA FPGA - MATRIZ DE ELECTRODOS
% DEPARTAMENTO DE ELECTRÓNICA 

%% Limpiamos todo
clearvars -except NumP kaiserC kaiserHP equirippleC;
clc;
close all;

%% Definimos directorio donde están los archivos de texto para leerlos
% Define del directorio de trabajo - donde están los archivos de texto
myFolder = 'C:\Users\Raul\Documents\PROJECTS_2021\project_2021_v8_55_tacteles\log_tex';

% Error si el directorio no está correcto
if ~isdir(myFolder)
    errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
    uiwait(warndlg(errorMessage));
    return;
end

% Se buscan los archivos con extensión .txt
filePattern = fullfile(myFolder, '*txt');
matFiles = dir(filePattern);

%% Valor de k inicial es 1
indice = 1;

%% Bucle que recorre todos los ficheros de texto
%while(indice <= size(matFiles,1))
while(indice <= 1)
    
    %% Limpiamos algunas variables
    clear data;
    
    %% Se toma el nombre correspondiente para buscarlo en el directorio
    baseFileName = matFiles(indice).name;
    fullFileName = fullfile(myFolder, baseFileName);
    
    %if baseFileName == 'prue1.txt'
    %elseif baseFileName == 'prue2.txt'
    %else
    %Sustituir el nombre por el archivo de
    %resultados y descomentar este bucle para no aplicar las funciones
    fprintf(1, 'Now reading %s\n', fullFileName);
    
    %% CARRIAGE RETURN
%     a=sprintf('\n');   % a now equals a line feed
%     b=sprintf('\r');   % b now equals a carriage return
    
    %% Abrimos, leemos y cerramos el fichero de texto (mismo directorio de trabajo)
    %fid = fopen('arch_feliz.txt', 'rt'); % opción rt para abrir en modo texto
%     fid = fopen(fullFileName, 'rt'); % opción rt para abrir en modo texto
%     formato = '%c'; % formato de cada línea
%     data = textscan(fid, formato);
%     fclose(fid);
%     
%     fid=fopen(fullFileName, 'r+');
%     full=textscan(fid, '%s', 'Delimiter', sprintf('\r'));
%     fclose(fid);
    
    fid=fopen(fullFileName, 'r+');
    full=textscan(fid, '%s', 'Delimiter', sprintf('\r'));
    fclose(fid);
    
    cell_1 = cell(1,1);
    cell_2 = cell(1,1);
    
    k = 1; n = 1;
    
    for i = 1:size(full{1,1},1)
       if(rem(i,2)==1)
          cell_1{1,1}(k,1) = full{1,1}(i,1);
          k = k+1;
       else
          cell_2{1,1}(n,1) = full{1,1}(i,1);
          n = n+1;
       end       
    end    
    
    % Antes, full
    contFilas = 1;
    contColumnas = 1;
    
    F = zeros(55,size(full{1,1},1));
    A = zeros(55,size(full{1,1},1));
    B = zeros(55,size(full{1,1},1));
    for i = 1:size(full{1,1},1)
        cc = full{1,1}(i,1);        
        if(cell2mat(cc)=="")            
            if(contFilas == 56)
                contColumnas = contColumnas + 1;  
            end
            contFilas = 1;
        else
%           F(contFilas,contColumnas) = str2double(cc);
            aux = textscan(string(full{1,1}(i,1)), '%s', 'Delimiter', sprintf(','));
            aa = aux{1,1}(1,1);
%             bb = aux{1,1}(2,1);
            A(contFilas,contColumnas) = str2double(aa);
%             B(contFilas,contColumnas) = str2double(bb);
            contFilas = contFilas + 1;
        end
    end
    
    
    % Primero, cell_1
%     contAFilas = 1;
%     contAColumnas = 1;    
%     
%     A = zeros(55,size(cell_1{1,1},1));
%     for i = 1:size(cell_1{1,1},1)
%         cc = cell_1{1,1}(i,1);        
%         if(cell2mat(cc)=="")            
%             if(contAFilas == 56)
%                 contAColumnas = contAColumnas + 1;  
%             end
%             contAFilas = 1;
%         else
%             A(contAFilas,contAColumnas) = str2double(cc);
%             contAFilas = contAFilas + 1;
%         end
%     end
%     
%     
%     % Segundo, cell_2
%     contBFilas = 1;
%     contBColumnas = 1;    
%     
%     B = zeros(55,size(cell_2{1,1},1));
%     for i = 1:size(cell_2{1,1},1)
%         dd = cell_2{1,1}(i,1);        
%         if(cell2mat(dd)=="")            
%             if(contBFilas == 56)
%                 contBColumnas = contBColumnas + 1;  
%             end
%             contBFilas = 1;
%         else
%             B(contBFilas,contBColumnas) = str2double(dd);
%             contBFilas = contBFilas + 1;
%         end
%     end
    
        
    
%     %% Abrimos, leemos y cerramos el fichero de texto (mismo directorio de trabajo)
%     fid = fopen(fullFileName, 'rt'); %Abre fichero
%     % opción rt para abrir en modo texto poner archivo de texto de los datos
%     %y trabajar en el directorio con set path y los subfolders
%     formato = '%s'; % formato de cada línea
%     data = textscan(fid, formato);%Todos los datos leidos por labview
%     %fid es el numero que identifica el archivo de texto
%     fclose(fid); %Cierra el fichero
    
    %% Sustituir coma por punto
    % Nota 1: el símbolo '@' es una 'anonymous function' que crea un handle, y el
    % paretensis inmediatamente posterior implica que como entrada tiene un
    % único valor --> x y que como salida devuelve un único valor, que viene
    % dado por las expresiones que hay después
    
    % Nota 2: la función 'strrep' encuentra y reemplaza a un substring. En este
    % caso encuentra la coma ',' y la sustituye por '.'
    
    % Nota 3: la función 'cellfun' aplica una función a cada celda del cell
    % array. En este caso, se aplica la función "@(x) strrep(x,',','.')" a los
    % contenidos de data.
    
    % Nota 4: la propiedad 'UniformOutput' al ser 'false' hace que la función "@(x)(funcion anonima strrep(x,',','.')(sustituir , por puntos)"
    % devuelva los valores en un cell array (array donde las posiciones son
    % celdas donde puede ponerse lo que se quiera, matrices, frames,
    % vectores...etc, POR TANTO EN CADA CELDA VA UN FRAME (CONJUNTO DE DATOS RECOGIDOS) DEL DEDO 2
%     data = cellfun(@(x) strrep(x,',','.'), data, 'UniformOutput', false);
    %Para acceder a un cell array hacerlo con este formato
    %data(1,1)(50,1)(celdas)(lo que hay dentro (una matriz en este caso))
    
    %% Convertir a vector numérico
    % Nota 1: la función "cell2mat" convierte los contenidos de un cell array
    % en una matriz de valores. En este caso, en una matriz de una única
    % columna y filas tantas como valores tengamos
    
    % Nota 2: los datos se leen de 1 en 1 y de fila en fila. Cuando se acaba
    % una fila se pasa a la siguiente
%     a = cell2mat(cellfun(@str2num, data{1}, 'UniformOutput', false));
    
    % Se han guardado todos los datos del .txt
    
    %% Agrupamos los datos de a por secuencias de tacteles
    % Para la matriz A
    tamSeq = contColumnas;
    MATSEQ = zeros(55,tamSeq);
%     MATSEQ2 = zeros(55,tamSeq);
    
    for i = 1:55
        for k = 1:tamSeq
            MATSEQ(i,k) = A(i,k);
%             MATSEQ2(i,k) = B(i,k);
        end
    end
    

    
    
%     %% Agrupamos los datos de a por secuencias de tacteles
%     tamSeq = size(A,1);
%     MATSEQ = zeros(55,tamSeq);
%     
%     for i = 1:55
%         for k = 1:tamSeq
%             indice = i + 55*(k-1);
%             MATSEQ(i,k) = a(indice,1);
%         end
%     end
    
    indice = indice + 1;
    
end

%% Representamos ahora las 55 gráficas correspondientes a los 55 tacteles de la matriz
TS = 0.005;   % Esta habría que medirla con la interfaz de Luna que te la daba exacta, lo que pasa que ahora habría que sincronizarla con el SDK, no con Labview, por lo que se complica un poco eso...
              % A no ser que conecte el Ethernet a Labview y de ahí me genere
              % el archivo..., pero lo veo absurdo teniendo ya el archivo.
              % A lo mejor se puede calcular el tiempo exacto con los timers
              % del FreeRTOS o algo así, o con el Timer Hardware que tenía por
              % ahí..., que aun no uso
              
% Solo MATSEQ
dist = 0:10*TS:10*TS*(size(MATSEQ,2)-1);
for i = 1:55
   figure(i); box on;
   plot(dist,MATSEQ(i,:),'b');   
   % xlabel('Sample');
   xlabel('Traveled distance [mm]');
   ylabel('Signal Magnitude');   
   legend(strcat('Tactel number: ', num2str(i)));
end

% MATSEQ y MATSEQB
dist = 0:10*TS:10*TS*(size(MATSEQ,2)-1);
for i = 1:55
   % Para normalizar
   maximo1 = max(MATSEQ(i,:));
   maximo2 = max(MATSEQ2(i,:));
   figure(i); hold on; box on;
   plot(dist,MATSEQ(i,:)./maximo1,'b','LineWidth',2);   
   plot(dist,MATSEQ2(i,:)./maximo2,'black--','LineWidth',2);
   % xlabel('Sample');
   xlabel('Traveled distance [mm]');
   ylabel('Signal Magnitude');   
   legend(strcat('Filtered - Tactel number: ', num2str(i)), 'Not filtered - same tactel number');
end


%% Cogemos 1024 muestras del tactel 44
inputNuevo = MATSEQ(44,1001:1000+5500);
figure;plot(inputNuevo);




























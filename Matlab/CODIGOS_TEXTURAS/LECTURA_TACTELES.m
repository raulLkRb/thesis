%% SCRIPT PARA LECTURA DE DATOS DE LA FPGA - MATRIZ DE ELECTRODOS
% DEPARTAMENTO DE ELECTRÓNICA 

%% Limpiamos todo
clearvars -except NumP kaiserC kaiserHP equirippleC;
clc;
close all;

%% Numero bits 
% numeroBits = 23; % para el M6
numeroBits = 24;

%% Definimos directorio donde están los archivos de texto para leerlos
% Define del directorio de trabajo - donde están los archivos de texto
myFolder = 'D:\DOCTORADO\aGOOGLE_DRIVE\aTRABAJO\ARTICULOS_REVISTAS\TEXTURAS\CODIGOS_MATLAB\zTODO_AQUI\ARCHIVO_FFT';

% Error si el directorio no está correcto
if ~isdir(myFolder)
    errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
    uiwait(warndlg(errorMessage));
    return;
end

% Se buscan los archivos con extensión .txt
filePattern = fullfile(myFolder, '*txt');
matFiles = dir(filePattern);

%% Parámetro M
M = 1024;

%% Número de iteraciones en el processing
iter = 201;

%% Valor de k inicial es 1
indice = 1;

%% Bucle que recorre todos los ficheros de texto
while(indice <= 1)
    
    %% Limpiamos algunas variables
    clear data;
    
    %% Se toma el nombre correspondiente para buscarlo en el directorio
    baseFileName = matFiles(indice).name;
    fullFileName = fullfile(myFolder, baseFileName);
    fprintf(1, 'Now reading %s\n', fullFileName);

    %% Tomamos el nombre de la textura
    texNameArray = textscan(string(baseFileName), '%s', 'Delimiter', sprintf('.'));
    texName = string(texNameArray{1,1}(1,1));
       
    %% Abrimos, leemos y cerramos el fichero de texto (mismo directorio de trabajo)
    fid=fopen(fullFileName, 'r+');
    full=textscan(fid, '%s', 'Delimiter', sprintf('\r'));
    fclose(fid);

    %% Creamos un cell array para ir guardando las matrices de datos
    dataStrcBueno = cell(iter,1);
    dataStrcMalo = cell(iter,1);
    dataStrcFinalSweep = cell(iter,1);
    dataStrcFinalFFT = cell(iter,1);

    contadorIter = 1;
    flagMalo = 0;

    for i = 1:size(full{1,1},1)
        if(contadorIter <= iter)
            if(string(full{1,1}(i,1)) == "")
                dummyVar = 1;
            else
                auxArray = textscan(string(full{1,1}(i,1)), '%s', 'Delimiter', sprintf(','));
                auxVar = auxArray{1,1}(1,1);
                if(auxVar{1,1}(1,1) == '&')
                    if(flagMalo == 0)
                        contadorIter = contadorIter + 1;
                    end
                    flagMalo = 1;
                else
                    if(numeroBits == 23)
                        arrayColumna = arrayDoubleHex(auxArray,numeroBits);
                        arrayColumna = arrayColumna.*2;
                    else
                        arrayColumna = arrayDoubleHex(auxArray,numeroBits);
                    end
                    dataStrcBueno{contadorIter,1} = [dataStrcBueno{contadorIter,1}, arrayColumna];
                    if(flagMalo == 1)
                        flagMalo = 0;
                    end
                end
                i 
            end
        else
            dummyVar = 1;
        end
    end

    %% Guardamos en arrays para Sweep y FFT
    for iteracion = 1:iter
        if(size(dataStrcBueno{iteracion,1},2)<2*M) % Si el tamaño es mas pequeño que 2*M
            dataStrcFinalSweep{iteracion,1} = zeros(55,2*M);
            dataStrcFinalFFT{iteracion,1} = zeros(55,M);   
        else
            % Quitamos 50 muestras, que equivalen a 0.10 segundos, o 3.092 mmm de recorrido
            % Quitamos 128 muestras...
            vectorAux1 = dataStrcBueno{iteracion,1}(:,128:128+2*M-1);
            dataStrcFinalSweep{iteracion,1} = vectorAux1;
            vectorAux2 = dataStrcBueno{iteracion,1}(:,128:128+M-1);
            dataStrcFinalFFT{iteracion,1} = vectorAux2;       
        end
    end

    %% Guardamos datos
    save(strcat(texName,'.mat'),'dataStrcBueno');
    save(strcat(texName,'_SWEEP.mat'),'dataStrcFinalSweep');
    save(strcat(texName,'_FFT.mat'),'dataStrcFinalFFT');

    %% Aumentamos indice de archivos
    indice = indice + 1
    
end



























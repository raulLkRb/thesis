%% SCRIPT PARA CREAR FICHEROS DE ESTIMULO

%% SCRIPT PARA LECTURA DE DATOS DE LA FPGA - MATRIZ DE ELECTRODOS
% DEPARTAMENTO DE ELECTRÓNICA 
close all;
clear all;
clc;

%% Directorio accDirectory
accDirectory = 'C:\Users\Raul\Desktop\CLASIF_SWEEP\CLASIF_SWEEP\CLASIF_SWEEP\NO_FILTER\accDirectory';

%% Directorio indiceOutliers
indOutlDirectory = 'C:\Users\Raul\Desktop\CLASIF_SWEEP\CLASIF_SWEEP\CLASIF_SWEEP\NO_FILTER\indiceOutliers';

%% Creamos directorios de outliers y de no outliers para guardar figuras
noOutlDirectory = 'C:\Users\Raul\Desktop\CLASIF_SWEEP\CLASIF_SWEEP\CLASIF_SWEEP\NO_FILTER\noOutlDirectory';
siOutlDirectory = 'C:\Users\Raul\Desktop\CLASIF_SWEEP\CLASIF_SWEEP\CLASIF_SWEEP\NO_FILTER\siOutlDirectory';

indiceOutlDirectory = 1; % Sin outliers --> 1;   Con outliers --> 2

%% Creamos divisorArray
divisorArray = [1 2 4 8 16 32 64 128];
indiceDivisor = 1;

%% NUMERO ITERACIONES PARA OBTENER MEAN,STD PARA RESULTADOS PAPER
NPAPER_ITR = 100;

%% Creamos accDivisorArray
accDivisorArray = zeros(NPAPER_ITR,length(divisorArray));


%% Bucle outlier-Directory
while(indiceOutlDirectory <= 2)             
    
    %% Deleteamos MAT_FINAL y indiceOutliers
    delete MAT_FINAL.mat indiceOutliers.mat        
    
    %% Cargamos LECTURA_TACTELES
    % LECTURA_TACTELES;
    
    %% Definimos directorio donde están los archivos de texto para leerlos
    % Define del directorio de trabajo - donde están los archivos de texto
    myFolder = 'C:\Users\Raul\Desktop\CLASIF_SWEEP\CLASIF_SWEEP\CLASIF_SWEEP';
    
    % Error si el directorio no está correcto
    if ~isdir(myFolder)
        errorMessage = sprintf('Error: The following folder does not exist:\n%s', myFolder);
        uiwait(warndlg(errorMessage));
        return;
    end
    
    % Se buscan los archivos con extensión .txt
    filePattern = fullfile(myFolder, '*mat');
    matFiles = dir(filePattern);
    
    %% Número de texturas
    nTexturas = 12;
    
    %% Vectores de medias y STD
    vectorMedias = zeros(1,12);
    vectorSTD = zeros(1,12);
    
    %% Parámetro M
    M = 1024;
    
    N_ITERACIONES = 200; % Poner siempre 1 menos de las que meta en el Processing
    
    indice = 1; 
    indiceExterno = 0;
    
    tactelArray = 28.*ones(1,nTexturas);
    
    MSINOUTLIERS = [];
    indiceOutliers = [];
    indiceOutliers_MEDIAN = [];

    %% texOutliers en funcion de indiceOutlDirectory
    if(indiceOutlDirectory == 1)
    
        %% Outliers de cada textura
        tex1outliers = [1];
        tex2outliers = [1];
        tex3outliers = [1];
        tex4outliers = [1];
        tex5outliers = 1:18;
        tex6outliers = [1:53,75];
        tex7outliers = [1:44,141,143,144:152];
        tex8outliers = [1:47];
        tex9outliers = [1];
        tex10outliers = [1:7,133,174,198];
        tex11outliers = [1:20];
        tex12outliers = [1:9];

    else
        
        %% Outliers de cada textura
        tex1outliers = [1];
        tex2outliers = [1];
        tex3outliers = [1];
        tex4outliers = [1];
        tex5outliers = 1;
        tex6outliers = 1;
        tex7outliers = 1;
        tex8outliers = 1;
        tex9outliers = 1;
        tex10outliers = 1;
        tex11outliers = 1;
        tex12outliers = 1;

    end
    
    indiceOutliersNuevo = [];
    
    for i = 1:nTexturas
        switch i
            case 1
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex1outliers];
            case 2
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex2outliers];
            case 3
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex3outliers];
            case 4
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex4outliers];
            case 5
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex5outliers];
            case 6
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex6outliers];
            case 7
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex7outliers];
            case 8
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex8outliers];
            case 9
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex9outliers];
            case 10
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex10outliers];
            case 11
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex11outliers];
            case 12
                indiceOutliersNuevo = [indiceOutliersNuevo, (i-1).*201+tex12outliers];
            otherwise
                dummyVar = 1;
        end
    
    end        
    
    indiceSecuencial = 1;
    
    %% MATRIZ DE VARIANZAS
    SWEEP_MATRIZ = [];
    
    %% MATRIZ DE DATOS BRUTOS
    MAT_FINAL = [];
        
    %% CELL ARRAY FOR SWEEP
    dataSWEEPTactel = cell(size(matFiles,1),1);
        
    %% Bucle que recorre todos los ficheros de texto
    while(indice <= size(matFiles,1))
        
        %% Limpiamos algunas variables
        clear data;
        
        %% Se toma el nombre correspondiente para buscarlo en el directorio
        baseFileName = matFiles(indice).name;
        fullFileName = fullfile(myFolder, baseFileName);
        fprintf(1, 'Now reading %s\n', fullFileName);
    
        %% Tomamos el nombre de la textura
        texNameArray = textscan(string(baseFileName), '%s', 'Delimiter', sprintf('.'));
        texName = string(texNameArray{1,1}(1,1));
    
        %% Cargamos el fichero
        load(strcat(texName,'.mat'));
    
        %% Vamos a usar la función para que nos de las matrices para cada archivo de estímulos
        % El último elemento de cada cell array representa la textura que está presente para ese rango de velocidades
        M = 1024;
        vel = 30;
        nIter = 100;
        N_TAM = 2*M;
    
        %% Elegimos un tactel
        tactel = tactelArray(1,indice);
        dataStrcFinalSWEEPTactel = cell(N_ITERACIONES+1,1);
        for i = 1:N_ITERACIONES+1
            dataStrcFinalSWEEPTactel{i,1} = dataStrcFinalSweep{i,1}(tactel,:);
        end   
    
        %% Tomamos de cada array unos pocos más para tener más datos de entrenamiento
        HOW_MANY_ARRAYS = 1;
        MAT_AUX = [];
        for i = 2:size(dataStrcFinalSWEEPTactel,1)
            MAT_FINAL = [MAT_FINAL; dataStrcFinalSWEEPTactel{i,1}];
            MAT_AUX = [MAT_AUX; dataStrcFinalSWEEPTactel{i,1}];
        end
    
        MAT_AUX = cell2mat(dataStrcFinalSWEEPTactel);
        
    
        for i = 1:size(MAT_AUX,1)
            for j = 1:size(MAT_AUX,2)
                if(MAT_AUX(i,j)<0)
                    MAT_AUX(i,j) = 0;
                end
            end
        end
    
    %     figure;
    %     subplot(2,1,1);
    %     plot(MAT_AUX');title(strcat('no SMV--',num2str(indice)));
        
    %     funcion200graficas(MAT_AUX);
        
        
        
        %% Vamos a quitar outliers en origen de datos y no en sweep
        % Quitamos outliers pero por clase no globalmente
        MAT_AUX2 = [];
        for i = 1:size(MAT_AUX,1)
            MAT_AUX2 = [MAT_AUX2; MAT_AUX(i,:),indiceSecuencial,indice];
            indiceSecuencial = indiceSecuencial + 1;
        end 
        [MSINOUTLIERS_AUX, indiceOutliers_AUX, meanSMV, stdSMV] = smvOutliers(MAT_AUX2,2*M);
        [MSINOUTLIERS_AUX_MEDIAN, indiceOutliers_AUX_MEDIAN, meanSMV_MEDIAN, stdSMV_MEDIAN] = smvOutliersMEDIAN(MAT_AUX2,2*M);
        vectorMedias(1,indice) = meanSMV;
        vectorSTD(1,indice) = stdSMV;
        MSINOUTLIERS = [MSINOUTLIERS; MAT_AUX2];
        indiceOutliers = [indiceOutliers; indiceOutliers_AUX'];
        indiceOutliers_MEDIAN = [indiceOutliers_MEDIAN; indiceOutliers_AUX_MEDIAN'];
    
        dummyVar = 3;
    
    %     funcion200graficas(MAT_AUX2,indiceOutliers_AUX,indiceOutliers_AUX_MEDIAN,indice);
    
        %% Aumentamos indice
        indice = indice + 1
    
    end
    
    %% Guardamos los outliers en el directorio de indOutlDirectory y volvemos el directorio inicial
    cd(indOutlDirectory)
    save('indiceOutliers.mat','indiceOutliersNuevo');
    cd(myFolder)
    
    %% Quitamos nuevos outliers
    MSINOUTLIERS_NUEVO = [];
    dataSWEEPTactel = cell(size(matFiles,1),1);
    for i = 1:size(MSINOUTLIERS,1)
        if(not(isempty(find(i == indiceOutliersNuevo))))
            dummyVar = 1;
        else
            MSINOUTLIERS_NUEVO = [MSINOUTLIERS_NUEVO; MSINOUTLIERS(i,:)];
            dataSWEEPTactel{MSINOUTLIERS(i,end),1} = [dataSWEEPTactel{MSINOUTLIERS(i,end),1}; SWEEPExecute(MSINOUTLIERS(i,:),M)];
        end    
    end
    
    MSINOUTLIERS = [];
    MSINOUTLIERS = MSINOUTLIERS_NUEVO;
    
    
    
    %% Guardamos matriz final con los indices de secuencia y clase        
    MAT_FINAL = MSINOUTLIERS;

    %% Ahora buscamos las matrices de test y de train
    % Trasponemos para que cuadren los indices
    MAT_FINAL3 = [cell2mat(dataSWEEPTactel), MAT_FINAL(:,end-1), MAT_FINAL(:,end)];
    MAT_FINAL2 = MAT_FINAL3';

    indiceDivisor = 1;
    
    while(indiceDivisor <= 8)

        %% Tomamos divisor
        divisor = divisorArray(1,indiceDivisor);
        
        %% Solo la mitad de puntos
        MAT_AUXILIAR2A = zeros(M/divisor+2,size(MAT_FINAL2,2));
        for i = 1:size(MAT_FINAL2,2)
            MAT_AUXILIAR2A(:,i) = [MAT_FINAL2(1:divisor:M,i); MAT_FINAL2(M+1:M+2,i)];
        end
        
        %% Ahora calculamos islocalmin de esos puntos
        MAT_AUXILIAR2 = zeros(M/divisor+2,size(MAT_FINAL2,2));
        
        islocalIndicesVector = zeros(1,M/divisor);
        
        MSINOUTLIERS = [];
        indiceOutliers = [];
        
        for i = 1:size(MAT_FINAL2,2)
        
            islocalIndices = find(islocalmin(MAT_AUXILIAR2A(1:end-2,i))==1)';
            if(length(islocalIndices) <= M/divisor)
                islocalIndicesVector = [islocalIndices, zeros(1,M/divisor-length(islocalIndices))];
            else
                islocalIndicesVector = [islocalIndices(1:M/divisor,1)'];
            end    
        
            MAT_AUXILIAR2(:,i) = [islocalIndicesVector'; MAT_FINAL2(M+1:M+2,i)];        
            MAT_AUXILIAR2(:,i) = [islocalmin(MAT_AUXILIAR2A(1:end-2,i)); MAT_FINAL2(M+1:M+2,i)];
        
        end
        
        MAT_AUXILIAR4 = MAT_AUXILIAR2;
        
        %% Ahora calculamos islocalmax de esos puntos
        MAT_AUXILIAR5 = zeros(M/divisor+2,size(MAT_FINAL2,2));
        
        islocalIndicesVectorMax = zeros(1,M/divisor);
        
        
        for i = 1:size(MAT_FINAL2,2)
        
            islocalIndices = find(islocalmax(MAT_AUXILIAR2A(1:end-2,i))==1)';
            if(length(islocalIndices) <= M/divisor)
                islocalIndicesVectorMax = [islocalIndices, zeros(1,M/divisor-length(islocalIndices))];
            else
                islocalIndicesVectorMax = [islocalIndices(1:M/divisor,1)'];
            end    
        
            MAT_AUXILIAR5(:,i) = [islocalIndicesVectorMax'; MAT_FINAL2(M+1:M+2,i)];
            MAT_AUXILIAR5(:,i) = [islocalmax(MAT_AUXILIAR2A(1:end-2,i)); MAT_FINAL2(M+1:M+2,i)];
        
        end
        
        MAT_AUXILIAR6 = MAT_AUXILIAR5;
        
        %% Unimos MAT_AUXILIAR4 (MINIMOS) Y MAT_AUXILIAR6 (MAXIMOS), PARA TENERLO TODO EN UNA MATRIZ        
%         MAT_AUXILIAR7 = MAT_AUXILIAR4;     % MINIMOS   
        % MAT_AUXILIAR7 = MAT_AUXILIAR6;   % MAXIMOS
        MAT_AUXILIAR7 = MAT_AUXILIAR4(1:end-2,:) + MAT_AUXILIAR6(1:end-2,:); % MAXIMOS Y MINIMOS
        MAT_AUXILIAR7(size(MAT_AUXILIAR4,1)-1:size(MAT_AUXILIAR4,1),:) = MAT_AUXILIAR4(end-1:end,:);
                
            
                
            
        %% Quitamos outliers de MAT_AUXLIAIR4 y reanudamos proceso    
        indPaperIter = 1;
        while(indPaperIter <= NPAPER_ITR)
            
            %% Ahora buscamos las matrices de test y de train
            n = size(MAT_AUXILIAR7,2);
            vectorEspacePequeno = 1:200:200;
            vectorEspaceGrande = 1:1:n;
            vInd = randperm(n);
            % pTest = 0.2;
            pTest = 0.4;
            z = round(pTest*n);
            
            dataTest = [];
            labelTest = [];
            dataTrain = [];
            labelTrain = [];
            identfSec = [];
            identfSecTest = [];
            X_TRAIN = [];
            for i = 1:z
                dataTest = [dataTest, MAT_AUXILIAR7(1:size(MAT_AUXILIAR7,1)-2,vectorEspaceGrande(1,vInd(i)))];
                labelTest = [labelTest, MAT_AUXILIAR7(size(MAT_AUXILIAR7,1),vectorEspaceGrande(1,vInd(i)))];
                identfSecTest = [identfSecTest; MAT_AUXILIAR7(size(MAT_AUXILIAR7,1)-1,vectorEspaceGrande(1,vInd(i)))];
            end
            for i = (z+1):size(vInd,2)
%                 i
                X_TRAIN = [X_TRAIN, MAT_AUXILIAR7(1:size(MAT_AUXILIAR7,1),vectorEspaceGrande(1,vInd(i)):vectorEspaceGrande(1,vInd(i)))];
                dataTrain = [dataTrain, MAT_AUXILIAR7(1:size(MAT_AUXILIAR7,1)-2,vectorEspaceGrande(1,vInd(i)):vectorEspaceGrande(1,vInd(i)))];
                labelTrain = [labelTrain, MAT_AUXILIAR7(size(MAT_AUXILIAR7,1),vectorEspaceGrande(1,vInd(i)):vectorEspaceGrande(1,vInd(i)))];
                identfSec = [identfSec; MAT_AUXILIAR7(size(MAT_AUXILIAR7,1)-1,vectorEspaceGrande(1,vInd(i)):vectorEspaceGrande(1,vInd(i)))];
            end
                
            %% Ahora aplicamos el SWEEP y el smvOutliers (este solo al train)            
            MOUTSMV_TRAIN = [];
            X_TRAIN_ORDER = sortrows(X_TRAIN',size(X_TRAIN',2));
            
            vectorSizes = zeros(1,nTexturas);
            
            for i = 1:nTexturas
                arrOld = find(X_TRAIN_ORDER(:,end)==i);
                if(i==nTexturas)
                    arrNew = size(X_TRAIN_ORDER,1);
                else
                    arrNew = find(X_TRAIN_ORDER(:,end)==i+1);
                end
                X_AUX_TRAIN = X_TRAIN_ORDER(arrOld(1,1):arrNew(1,1),:);
            
                X_AUXILIAR_SMV = X_AUX_TRAIN;
            
                vectorSizes(1,i) = size(X_AUXILIAR_SMV,1);
                [MOUTSMV_TRAIN] = [MOUTSMV_TRAIN; smvOutliers(X_AUX_TRAIN,M/divisor)];
            end
                
            %% Ahora vamos a obtener los descriptores de SWEEP y crear los sets finales de entrenamiento y test
            dataTestSWEEPFinal = zeros(size(dataTest,2),M/divisor);
            labelTrainFinal = zeros(size(MOUTSMV_TRAIN,1),1);
            dataTrainSWEEPFinal = zeros(size(MOUTSMV_TRAIN,1),M/divisor);            
            
            % Para entrenamiento
            for i = 1:size(MOUTSMV_TRAIN,1)
                arrayAux = MOUTSMV_TRAIN(i,1:M/divisor);
                labelTrainFinal(i,1) = MOUTSMV_TRAIN(i,M/divisor+2);
                dataTrainSWEEPFinal(i,:) = arrayAux;
%                 i
            end
            
            % Para test
            for i = 1:size(dataTest,2)
                arrayAux = dataTest(1:M/divisor,i)';
                dataTestSWEEPFinal(i,:) = arrayAux;
%                 i
            end            
            
            %% Guardamos dataTrain, labelTrain, dataTest, labelTest y v
            % Clasificacion
            k = nTexturas;  % Número de clases
%             MAX_EPOCH = 100;
            % MAX_EPOCH = 7;
            MAX_EPOCH = 13;
            CUANTAS_ITERACIONES_STD = 100;
            porcentaje_clasificacion_correcta = zeros(1,CUANTAS_ITERACIONES_STD);
            pp_class_old = 0;
            pp_array = zeros(1,CUANTAS_ITERACIONES_STD);
            pp_centroide = cell(1,CUANTAS_ITERACIONES_STD);
            pp_iter = zeros(1,CUANTAS_ITERACIONES_STD);
            tic; 
            for indBucle = 1:CUANTAS_ITERACIONES_STD
                indBucle
                [i,centroide,iter] = Kmedio_vEpoch(dataTrainSWEEPFinal',k,labelTrainFinal',MAX_EPOCH);
%                 iter
            %     centroide
                pp_iter(1,indBucle) = iter;
                cluster_idx = kmedioCentroide(dataTestSWEEPFinal',k,centroide);
                [tam1,tam2]= size(cluster_idx);
                porcentaje_clasificacion_correcta(1,indBucle) = (sum(cluster_idx == labelTest)/tam2)*100;
                pp_class = porcentaje_clasificacion_correcta(1,indBucle)
                pp_array(1,indBucle) = pp_class;
                pp_centroide{1,indBucle} = centroide;
            end
            toc;
            
            % Mostramos resultados de ACCURACY Y DESVIACION TIPICA
            media_clasif = mean(porcentaje_clasificacion_correcta)
            desv_tipica_clasif = std(porcentaje_clasificacion_correcta)
            
            
            %% Repetimos clasificación con el maximo
            valorMaximo = max(pp_array);
            indiceMaximo = find(pp_array == max(pp_array));
            
            centroide = pp_centroide{1,indiceMaximo};
            cluster_idx = kmedioCentroide(dataTestSWEEPFinal',k,centroide);
            % cluster_idx = kmedioCentroideDTW(dataTest,k,centroide);
            cl_idx = cluster_idx;
            [tam1,tam2]= size(cluster_idx);
            pp_class = (sum(cluster_idx == labelTest)/tam2)*100
    
            %% Guardamos datos de porcentaje de clasificación
            accDivisorArray(indPaperIter,indiceDivisor) = valorMaximo;
    
            %% Aumentamos contador de paper iteraciones
            indPaperIter = indPaperIter + 1;
        end        
            
        %% Matriz de confusion
        trueLabels = labelTest';
        predictedLabels = cl_idx';
        
        mascara = zeros(1,27);
        
        mascara = [ones(1,nTexturas) zeros(1,27-nTexturas)];

        %% outlierString -- quitando o sin quitar outliers
        if(indiceOutlDirectory == 1)
            outlierString = 'noOutlDataSweep';
            folderDirectory = noOutlDirectory;
        else
            outlierString = 'siOutlDataSweep';
            folderDirectory = siOutlDirectory;
        end
        
        % Tomar el maximo valor de pp_array para la matriz de confusion
        representaMatrizConfusion(predictedLabels,trueLabels,mascara,30,3,1024,outlierString,'centroideString');
        cadenaFigura = strcat('SWEEP-V30-M1024-NPOINTS',num2str(M/divisor));
        cadenaFigura2 = strcat(cadenaFigura,'.fig');
        % Cambiamos directorio, guardamos y volvemos a poner el directorio inicial
        cd(folderDirectory)
        savefig(cadenaFigura2);
        cd(myFolder)
        close all;  
            
        %% Aumentamos indiceDivisor
        indiceDivisor = indiceDivisor + 1
    
    end
    
    %% Guardamos dataSWEEPTactel -- quitando o sin quitar outliers
    if(indiceOutlDirectory == 1)        
        cadenaDATASWEEP = 'noOutlDataSweep';
        cadenaDATASWEEP2 = strcat(cadenaDATASWEEP,'.mat');
        cadenaACCSWEEP = 'noOutlAccSweep';
        cadenaACCSWEEP2 = strcat(cadenaACCSWEEP,'.mat');
        cadenaFIGSWEEP = 'noOutlFigSweep';
        cadenaFIGSWEEP2 = strcat(cadenaFIGSWEEP,'.fig');
    else
        cadenaDATASWEEP = 'siOutlDataSweep';
        cadenaDATASWEEP2 = strcat(cadenaDATASWEEP,'.mat');
        cadenaACCSWEEP = 'siOutlAccSweep';
        cadenaACCSWEEP2 = strcat(cadenaACCSWEEP,'.mat');
        cadenaFIGSWEEP = 'siOutlFigSweep';
        cadenaFIGSWEEP2 = strcat(cadenaFIGSWEEP,'.fig');
    end        
    cd(folderDirectory)
    save(cadenaDATASWEEP2,'dataSWEEPTactel');
    cd(myFolder)

    %% Guardamos también accDivisorArray y la gráfica correspondiente
    cd(accDirectory)
    save(cadenaACCSWEEP2,'accDivisorArray');
    cd(myFolder)

    %% Representamos media y desviación típica de cada punto
    puntos = [1024,512,256,128,64,32,16,8];
    figure; hold on; box on;
    title(cadenaACCSWEEP2);
    xlabel('Sent pooints');
    ylabel('Classification accuracy [%]');
    axis([0 1040 0 100]);
    media = mean(accDivisorArray);
    desv_tipica = std(accDivisorArray);
    errorbar(puntos,media,desv_tipica,'black.','MarkerSize',20);
    plot(puntos,media,'b','LineWidth',2);   
    cd(accDirectory)
    savefig(cadenaFIGSWEEP2);
    cd(myFolder)
    close all;
    
    %% Aumentamos el indice del directorio
    indiceOutlDirectory = indiceOutlDirectory + 1;

end




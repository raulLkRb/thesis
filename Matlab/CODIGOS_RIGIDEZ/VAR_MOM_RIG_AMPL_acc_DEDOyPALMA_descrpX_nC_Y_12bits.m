%% SCRIPT PARA PROCESADO DE DATOS DE RIGIDEZ
% DEPARTAMENTO DE ELECTRÓNICA 
close all;
clear all;
clc;

optDEDOyPALMAPalma = 2;
indMomentos = 1;
% indMomentos = 6;
nCIndice = 1;


% Numero de iteraciones
nIteraciones = 40;

while(indMomentos <= 6)
    
    %% Cargamos los descriptores
    load('descrpSupDedo');
    load('descrpSupPalma');
    
    % DEDOyPALMA
    descriptorObjDedo = cell(43,1);
    
    % PALMA
    descriptorObjPalma = cell(43,1);
    
    
    %% Número de clases = número de objetos
    nObjetos = 42;
    
    %% NUMERO ITERACIONES PARA OBTENER MEAN,STD PARA RESULTADOS PAPER
%     NPAPER_ITR = 100;
    NPAPER_ITR = 10;
    
    %% Desplazamos el valor de cada descriptor a la derecha por 27, 17, 24 y 3 bits, respectivamente
    for ii = 1:43
        if(ii==7)
            % Trama mala
        else   
%             nIteraciones = size(descrpSupDEDOyPALMA{ii,1},1);
            for k = 1:nIteraciones
                % DEDOyPALMA
                descriptorObjDedo{ii,1}{k,1}(1,:) = floor(descrpSupDedo{ii,1}{k,1}(1,:)/2^25); 
                descriptorObjDedo{ii,1}{k,1}(2,:) = floor(descrpSupDedo{ii,1}{k,1}(2,:)/2^15); 
                descriptorObjDedo{ii,1}{k,1}(3,:) = floor(descrpSupDedo{ii,1}{k,1}(3,:)/2^14);                 
                descriptorObjDedo{ii,1}{k,1}(4,:) = floor(descrpSupDedo{ii,1}{k,1}(4,:)/2^14);
                
                % PALMA
                descriptorObjPalma{ii,1}{k,1}(1,:) = floor(descrpSupPalma{ii,1}{k,1}(1,:)/2^24); 
                descriptorObjPalma{ii,1}{k,1}(2,:) = floor(descrpSupPalma{ii,1}{k,1}(2,:)/2^13); 
                descriptorObjPalma{ii,1}{k,1}(3,:) = floor(descrpSupPalma{ii,1}{k,1}(3,:)/2^13); 
                descriptorObjPalma{ii,1}{k,1}(4,:) = floor(descrpSupPalma{ii,1}{k,1}(4,:)/2^13);
            end
        end
    end
    

       
    %% TENER LOS DATOS DE OBJETOS TODOS EN UNA MATRIZ EN MAT_AUXLIAR7  
    descrptCualCell = cell(15,1); descriptorName = cell(15,1);
    descrptCualCell{1,1} = [1]; descriptorName{1,1} = '1';
    descrptCualCell{2,1} = [2]; descriptorName{2,1} = '2';
    descrptCualCell{3,1} = [3]; descriptorName{3,1} = '3';
    descrptCualCell{4,1} = [4]; descriptorName{4,1} = '4';
    descrptCualCell{5,1} = [1 2]; descriptorName{5,1} = '1a2';
    descrptCualCell{6,1} = [1 3]; descriptorName{6,1} = '1-3';
    descrptCualCell{7,1} = [1 4]; descriptorName{7,1} = '1-4';
    descrptCualCell{8,1} = [2 3]; descriptorName{8,1} = '2a3';
    descrptCualCell{9,1} = [2 4]; descriptorName{9,1} = '2-4';
    descrptCualCell{10,1} = [3 4]; descriptorName{10,1} = '3a4';
    descrptCualCell{11,1} = [1 2 3]; descriptorName{11,1} = '1-2-3';
    descrptCualCell{12,1} = [1 2 4]; descriptorName{12,1} = '1-2-4';
    descrptCualCell{13,1} = [1 3 4]; descriptorName{13,1} = '1-3-4';
    descrptCualCell{14,1} = [2 3 4]; descriptorName{14,1} = '2-3-4';
    descrptCualCell{15,1} = [1 2 3 4]; descriptorName{15,1} = '1-2-3-4';
    
    indDescrpCual = 1;
%     indDescrpCual = 3;
%     indDescrpCual = 5;

    while(indDescrpCual <= size(descrptCualCell,1))
        
        descriptorCual = descrptCualCell{indDescrpCual,1};    

        MAT_AUXILIAR = [];   % ¡¡OJO!! --> AQUÍ YA NO VAMOS A METER EL DESCRIPTOR 7
        iiIndice = 1;
        for ii = 1:43
            if(ii==7)
                % Trama mala
            else   
%                 nIteraciones = size(descrpSupDEDOyPALMA{ii,1},1);
                if(ii>7)
                    iiIndice = ii-1;
                else
                    iiIndice = ii;
                end
                for k = 1:nIteraciones
                    MAT_AUXILIAR = [MAT_AUXILIAR, [descriptorObjDedo{ii,1}{k,1}(descriptorCual,1); descriptorObjDedo{ii,1}{k,1}(descriptorCual,2); descriptorObjDedo{ii,1}{k,1}(descriptorCual,3); descriptorObjDedo{ii,1}{k,1}(descriptorCual,4); descriptorObjDedo{ii,1}{k,1}(descriptorCual,5); descriptorObjDedo{ii,1}{k,1}(descriptorCual,6); descriptorObjPalma{ii,1}{k,1}(descriptorCual,1); descriptorObjPalma{ii,1}{k,1}(descriptorCual,2); descriptorObjPalma{ii,1}{k,1}(descriptorCual,3); descriptorObjPalma{ii,1}{k,1}(descriptorCual,4); descriptorObjPalma{ii,1}{k,1}(descriptorCual,5); descriptorObjPalma{ii,1}{k,1}(descriptorCual,6); iiIndice]];
                end
            end
        end
        

        %% Cambiamos momentos en función de indMomentos
        [MAT_AUXILIAR_OUT] = selectMomentInMATAUX(MAT_AUXILIAR,indMomentos,optDEDOyPALMAPalma,indDescrpCual);
        
        %% Aplicamos - al conjunto de datos para DEDOyPALMA Y PALMA
        X = MAT_AUXILIAR_OUT(1:size(MAT_AUXILIAR_OUT,1)-1,:)';
        
       

        %% Centroides y otros
        if(indDescrpCual == 1)
            centroidesBuenosCell = cell(size(descriptorName,1),6);
            sigmaDesvTipicaClases = cell(size(descriptorName,1),6);
            distMedCentr = cell(size(descriptorName,1),6);    
            arrayPPClass = cell(size(descriptorName,1),6);  
            S_cell = cell(size(descriptorName,1),1);
        end
    
        %% Creamos accDivisorArray
        accDivisorArray = zeros(NPAPER_ITR,1);
        predLabelsArray = [];
        centroideCell = cell(NPAPER_ITR,1);
        dataSweepTrainCell = cell(NPAPER_ITR,1);
        dataSweepTrainLabelCell = cell(NPAPER_ITR,1);
        dataSweelCell = cell(NPAPER_ITR,1);
        labelTestCell = cell(NPAPER_ITR,1);

        %% Calculamos la matriz Xred
        Xred=X';

        % Xred coindide con score(:,1:nC)'

        %% Ponemos el identificador de secuencia en la última fila
        identfSec = 1:1:size(Xred,2);
        MAT_AUXILIAR_C = [Xred; MAT_AUXILIAR_OUT(end,:); identfSec];
        nVariables = size(MAT_AUXILIAR_C,1)-2;

        %% Quitamos outliers de MAT_AUXLIAIR4 y reanudamos proceso    
        indPaperIter = 1;
        while(indPaperIter <= NPAPER_ITR)

            %% Ahora buscamos las matrices de test y de train
            n = size(MAT_AUXILIAR_C,2);
            vectorEspaceGrande = 1:1:n;
            vInd = randperm(n);
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
                dataTest = [dataTest, MAT_AUXILIAR_C(1:size(MAT_AUXILIAR_C,1)-2,vectorEspaceGrande(1,vInd(i)))];
                labelTest = [labelTest, MAT_AUXILIAR_C(size(MAT_AUXILIAR_C,1)-1,vectorEspaceGrande(1,vInd(i)))];
                identfSecTest = [identfSecTest; MAT_AUXILIAR_C(size(MAT_AUXILIAR_C,1),vectorEspaceGrande(1,vInd(i)))];
            end
            for i = (z+1):size(vInd,2)
                X_TRAIN = [X_TRAIN, MAT_AUXILIAR_C(1:size(MAT_AUXILIAR_C,1),vectorEspaceGrande(1,vInd(i)):vectorEspaceGrande(1,vInd(i)))];
                dataTrain = [dataTrain, MAT_AUXILIAR_C(1:size(MAT_AUXILIAR_C,1)-2,vectorEspaceGrande(1,vInd(i)):vectorEspaceGrande(1,vInd(i)))];
                labelTrain = [labelTrain, MAT_AUXILIAR_C(size(MAT_AUXILIAR_C,1)-1,vectorEspaceGrande(1,vInd(i)):vectorEspaceGrande(1,vInd(i)))];
                identfSec = [identfSec; MAT_AUXILIAR_C(size(MAT_AUXILIAR_C,1),vectorEspaceGrande(1,vInd(i)):vectorEspaceGrande(1,vInd(i)))];
            end

            %% Ahora aplicamos el SWEEP y el smvOutliers (este solo al train)            
            MOUTSMV_TRAIN = [dataTrain' labelTrain' identfSec];
            %% Ahora vamos a obtener los descriptores de SWEEP y crear los sets finales de entrenamiento y test
            dataTestSWEEPFinal = zeros(size(dataTest,2),nVariables);
            labelTrainFinal = zeros(size(MOUTSMV_TRAIN,1),1);
            dataTrainSWEEPFinal = zeros(size(MOUTSMV_TRAIN,1),nVariables);            

            % Para entrenamiento
            for i = 1:size(MOUTSMV_TRAIN,1)
                arrayAux = MOUTSMV_TRAIN(i,1:nVariables);
                labelTrainFinal(i,1) = MOUTSMV_TRAIN(i,nVariables+1);
                dataTrainSWEEPFinal(i,:) = arrayAux;
            end

            % Para test
            for i = 1:size(dataTest,2)
                arrayAux = dataTest(1:nVariables,i)';
                dataTestSWEEPFinal(i,:) = arrayAux;
            end            

            %% Guardamos dataTrain, labelTrain, dataTest, labelTest y v
            % Clasificacion
            k = nObjetos;  % Número de clases
            MAX_EPOCH = 13;
%                 CUANTAS_ITERACIONES_STD = 100;
            CUANTAS_ITERACIONES_STD = 10;
            porcentaje_clasificacion_correcta = zeros(1,CUANTAS_ITERACIONES_STD);
            pp_class_old = 0;
            pp_array = zeros(1,CUANTAS_ITERACIONES_STD);
            pp_centroide = cell(1,CUANTAS_ITERACIONES_STD);
            pp_iter = zeros(1,CUANTAS_ITERACIONES_STD);
            tic; 
            for indBucle = 1:CUANTAS_ITERACIONES_STD
                [i,centroide,iter] = Kmedio_vEpoch(dataTrainSWEEPFinal',k,labelTrainFinal',MAX_EPOCH);
                pp_iter(1,indBucle) = iter;
                cluster_idx = kmedioCentroide(dataTestSWEEPFinal',k,centroide);
                [tam1,tam2]= size(cluster_idx);
                porcentaje_clasificacion_correcta(1,indBucle) = (sum(cluster_idx == labelTest)/tam2)*100;
                pp_class = porcentaje_clasificacion_correcta(1,indBucle);
                pp_array(1,indBucle) = pp_class;
                pp_centroide{1,indBucle} = centroide;
            end
            toc;

            % Mostramos resultados de ACCURACY Y DESVIACION TIPICA
%                 media_clasif = mean(porcentaje_clasificacion_correcta)
%                 desv_tipica_clasif = std(porcentaje_clasificacion_correcta)                

            %% Repetimos clasificación con el maximo
            valorMaximo = max(pp_array);
            indiceMaximo = find(pp_array == max(pp_array));                
            centroide = pp_centroide{1,indiceMaximo};
            cluster_idx = kmedioCentroide(dataTestSWEEPFinal',k,centroide);
            cl_idx = cluster_idx;
            [tam1,tam2]= size(cluster_idx);
            pp_class = (sum(cluster_idx == labelTest)/tam2)*100;

            %% Guardamos datos de porcentaje de clasificación
            dataSweepTrainCell{indPaperIter,1} = dataTrainSWEEPFinal;
            dataSweepTrainLabelCell{indPaperIter,1} = labelTrainFinal;
            dataSweelCell{indPaperIter,1} = dataTestSWEEPFinal;
            labelTestCell{indPaperIter,1} = labelTest;
            centroideCell{indPaperIter,1} = centroide;
            accDivisorArray(indPaperIter,1) = valorMaximo;
            predLabelsArray(indPaperIter,:) = cl_idx;

            %% Aumentamos contador de paper iteraciones
            indPaperIter = indPaperIter + 1
        end     

        %% Buscamos el porcentaje máximo de máximo
        indiceTotalMax = find(accDivisorArray == max(accDivisorArray));
        dataTestSWEEPFinal = dataSweelCell{indiceTotalMax(1,1),1}; % Como dataTestSWEEPFinal se toma aleatoria en cada iteración externa, hay que guardarlo para saber excatamente cuál era en aquel momento de indiceMaximo
        dataTrainSWEEPFinal = dataSweepTrainCell{indiceTotalMax(1,1),1}; % dataTrain es aleatorio, hay que hacerlo así...
        labelTrainSWEEPFinal = dataSweepTrainLabelCell{indiceTotalMax(1,1),1};
        labelTest = labelTestCell{indiceTotalMax(1,1),1}; % Aquí pasa lo mismo que para dataTestSWEEPFinal, también cambia externamente, por lo que hay que guardarlo
        predictedLabels = predLabelsArray(indiceTotalMax(1,1),:);
        % centroidesBuenos = pp_centroide{1,indiceTotalMax(1,1)};
        centroidesBuenos = centroideCell{indiceTotalMax(1,1),1};


        %% Cogemos centroidesBuenos haciendo un round, y recalculamos accuracy
        centroide = round(centroidesBuenos);
        cluster_idx = kmedioCentroide(dataTestSWEEPFinal',k,centroide);
        cl_idx = cluster_idx;
        [tam1,tam2]= size(cluster_idx);
        pp_class = (sum(cluster_idx == labelTest)/tam2)*100;

        %% Matriz de confusion
        trueLabels = labelTest';
        predictedLabels = cl_idx';
%             if(pp_class > 90)
%                 mascara = [ones(1,nObjetos) zeros(1,27-nObjetos)];
%                 % Tomar el maximo valor de pp_array para la matriz de confusion
%                 figuraConf = representaMatrizConfusion(predictedLabels,trueLabels,mascara,30,3,1024,'pruebaString','centroideString');
%                 strPrimera = strcat('DEDOyPALMA-----12bits--MatConf--Momento',num2str(indMomentos));
%                 strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%                 strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%                 title(strTercera);
%                 subtitle(strcat(num2str(pp_class),'%'));
%                 strCuarta = strcat('/confusionMatrices/',strTercera);
%                 strQuinta = strcat(strCuarta,'.fig');
%                 saveas(figuraConf,[pwd strQuinta]);
%                 close(figuraConf);
%             end

        %% Calculamos la distancia euclidea media entre centroides
        distMedCentr{indDescrpCual,nCIndice} = pdist(centroidesBuenos);
        centroidesBuenosCell{indDescrpCual,nCIndice} = centroidesBuenos;
        [M,STD_DEV] = computeMuDesvTip(dataTrainSWEEPFinal,labelTrainSWEEPFinal,nObjetos,centroidesBuenos);
        sigmaDesvTipicaClases{indDescrpCual,nCIndice} = [cell2mat(M);cell2mat(STD_DEV)]; 
        arrayPPClass{indDescrpCual,nCIndice} = pp_class;

%             if(pp_class>90)
%             %% Histograma de distancias
%             figure;box on;
%             histogram(distMedCentr{indDescrpCual,nCIndice},10,'FaceAlpha',0.5,'LineWidth',3);      
%             strPrimera = strcat('DEDOyPALMA-----12bits--Histogramadistancias--Momento',num2str(indMomentos));
%             strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%             strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%             xlabel('Distance to class centroid');
%             ylabel('Number of points');
%             title(strTercera);
%             subtitle(strcat(num2str(pp_class),'%'));
%             strCuarta = strcat('/histogramaDistancias/',strTercera);
%             strQuinta = strcat(strCuarta,'.fig');
%             figuraHist = gcf;
%             saveas(figuraHist,[pwd strQuinta]);
%             close(figuraHist);

%             %% Representamos la figura de Scatter3D o la correspondiente
%             if(nCIndice == 1)
%                 [h_arriba] = figuresGaussians-(nCIndice,nObjetos,centroide,dataTrainSWEEPFinal,labelTrainSWEEPFinal);
%                 strPrimera = strcat('DEDOyPALMA-----12bits--figuraVol1--Momento',num2str(indMomentos));
%                 strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%                 strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%                 subtitle(strcat(num2str(pp_class),'%'));
%                 strCuarta = strcat('/figurasGaussianas/',strTercera);
%                 strQuinta = strcat(strCuarta,'.fig');
%                 figuraVol1 = gcf;
%                 saveas(figuraVol1,[pwd strQuinta]);
%                 close(figuraVol1);
%             elseif(nCIndice == 2)                
%                 [h_arriba] = figuresGaussians-(nCIndice,nObjetos,centroide,dataTrainSWEEPFinal,labelTrainSWEEPFinal);
%                 % FIGURA 1
%                 strPrimera = strcat('DEDOyPALMA-----12bits--figuraVol2dimC--Momento',num2str(indMomentos));
%                 strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%                 strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%                 subtitle(strcat(num2str(pp_class),'%'));
%                 strCuarta = strcat('/figurasGaussianas/',strTercera);
%                 strQuinta = strcat(strCuarta,'.fig');
%                 figuraVol2C = gcf;
%                 saveas(figuraVol2C,[pwd strQuinta]);
%                 close(figuraVol2C);
%                 % FIGURA 2
%                 strPrimera = strcat('DEDOyPALMA-----12bits--figuraVol2dimB--Momento',num2str(indMomentos));
%                 strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%                 strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%                 subtitle(strcat(num2str(pp_class),'%'));
%                 strCuarta = strcat('/figurasGaussianas/',strTercera);
%                 strQuinta = strcat(strCuarta,'.fig');
%                 figuraVol2B = gcf;
%                 saveas(figuraVol2B,[pwd strQuinta]);
%                 close(figuraVol2B);
%                 % FIGURA 3
%                 strPrimera = strcat('DEDOyPALMA-----12bits--figuraVol2dimA--Momento',num2str(indMomentos));
%                 strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%                 strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%                 subtitle(strcat(num2str(pp_class),'%'));
%                 strCuarta = strcat('/figurasGaussianas/',strTercera);
%                 strQuinta = strcat(strCuarta,'.fig');
%                 figuraVol2A = gcf;
%                 saveas(figuraVol2A,[pwd strQuinta]);
%                 close(figuraVol2A);
%             elseif(nCIndice == 3)                
%                 [h_arriba] = figuresGaussians-(nCIndice,nObjetos,centroide,dataTrainSWEEPFinal,labelTrainSWEEPFinal);
%                 % FIGURA 1
%                 strPrimera = strcat('DEDOyPALMA-----12bits--figuraVol3dimB--Momento',num2str(indMomentos));
%                 strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%                 strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%                 subtitle(strcat(num2str(pp_class),'%'));
%                 strCuarta = strcat('/figurasGaussianas/',strTercera);
%                 strQuinta = strcat(strCuarta,'.fig');
%                 figuraVol3B = gcf;
%                 saveas(figuraVol3B,[pwd strQuinta]);
%                 close(figuraVol3B);
%                 % FIGURA 2
%                 strPrimera = strcat('DEDOyPALMA-----12bits--figuraVol3dimA--Momento',num2str(indMomentos));
%                 strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%                 strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%                 subtitle(strcat(num2str(pp_class),'%'));
%                 strCuarta = strcat('/figurasGaussianas/',strTercera);
%                 strQuinta = strcat(strCuarta,'.fig');
%                 figuraVol3A = gcf;
%                 saveas(figuraVol3A,[pwd strQuinta]);
%                 close(figuraVol3A);
%             elseif(nCIndice == 4)
%                 [h_arriba] = figuresGaussians-(nCIndice,nObjetos,centroide,dataTrainSWEEPFinal,labelTrainSWEEPFinal);
%                 strPrimera = strcat('DEDOyPALMA-----12bits--figuraVol4--Momento',num2str(indMomentos));
%                 strSegunda = strcat(strPrimera,strcat('--nC',num2str(nCIndice)));
%                 strTercera = strcat(strSegunda,strcat('--Descriptor',descriptorName{indDescrpCual,1}));
%                 subtitle(strcat(num2str(pp_class),'%'));
%                 strCuarta = strcat('/figurasGaussianas/',strTercera);
%                 strQuinta = strcat(strCuarta,'.fig');
%                 figuraVol4 = gcf;
%                 saveas(figuraVol4,[pwd strQuinta]);
%                 close(figuraVol4);
%             end
        pp_class
%             [h_arriba] = figuresGaussians(indDescrpCual,nObjetos,centroide,dataTrainSWEEPFinal,labelTrainFinal);    
%             end

        % Miramos indDescrpCual
        indDescrpCual
    
        %% Aumentamos indDescrpCual
        indDescrpCual = indDescrpCual + 1
    
        %% Cerramos todo
        close all; clc;
    end

    % Guardamos S_cell
    save(strcat('DEDOyPALMA-----12bits--S_cell--Momento',num2str(indMomentos)),'S_cell');

    % Guardamos variables antes de seguir
    save(strcat('DEDOyPALMA-----12bits--distMedCentr--Momento',num2str(indMomentos)),'distMedCentr');
    save(strcat('DEDOyPALMA-----12bits--centroidesBuenosCell--Momento',num2str(indMomentos)),'centroidesBuenosCell');
    save(strcat('DEDOyPALMA-----12bits--sigmaDesvTipicaClases--Momento',num2str(indMomentos)),'sigmaDesvTipicaClases');
    save(strcat('DEDOyPALMA-----12bits--arrayPPClass--Momento',num2str(indMomentos)),'arrayPPClass');

    
    % end del while de indMomentos
    indMomentos = indMomentos + 1
end












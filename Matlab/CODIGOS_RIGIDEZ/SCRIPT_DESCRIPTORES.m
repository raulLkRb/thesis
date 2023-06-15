%% SCRIPT PARA DESCRIPTORES EN ADELANTE

%% Cargamos strSupDedo y strSupPalma
load('strSupDedo');
load('strSupPalma');

%% ANTES DE NADA, VAMOS A QUEDARNOS EN strSupDedo y strSupPalma con 28 bits, considerando que los 4 más significativos serán para encontrar los descriptores correspondientes
strNewSupDedo = cell(size(strSupDedo,1),1);
strNewSupPalma = cell(size(strSupPalma,1),1);
% DEDO
for i = 1:43
    if(i==7)
        % Trama mala
    else
        for k = 1:size(strSupDedo{i,1},1)
            for m = 1:6
                MAT = strSupDedo{i,1}{k,1};
                MAT_AUX = zeros(size(MAT,1),size(MAT,2));
                valMaxNecBits = ceil(log2(max(max(MAT))));
                diferenciaBits = valMaxNecBits-28;
                for ii = 1:size(MAT,1)
                    for kk = 1:size(MAT,2)
                        if(diferenciaBits > 0)
                            MAT_AUX(ii,kk) = MAT(ii,kk)/2^(diferenciaBits);
                        else
                            MAT_AUX(ii,kk) = MAT(ii,kk);
                        end                            
                    end
                end
                strNewSupDedo{i,1}{k,1} = MAT_AUX;
                MAT = [];
                MAT_AUX = [];
            end
        end
    end
end
% PALMA
for i = 1:43
    if(i==7)
        % Trama mala
    else
        for k = 1:size(strSupPalma{i,1},1)
            for m = 1:6
                MAT = strSupPalma{i,1}{k,1};
                MAT_AUX = zeros(size(MAT,1),size(MAT,2));
                valMaxNecBits = ceil(log2(max(max(MAT))));
                diferenciaBits = valMaxNecBits-28;
                for ii = 1:size(MAT,1)
                    for kk = 1:size(MAT,2)
                        if(diferenciaBits > 0)
                            MAT_AUX(ii,kk) = MAT(ii,kk)/2^(diferenciaBits);
                        else
                            MAT_AUX(ii,kk) = MAT(ii,kk);
                        end  
                    end
                end
                strNewSupPalma{i,1}{k,1} = MAT_AUX;
                MAT = [];
                MAT_AUX = [];
            end
        end
    end
end


%% Hacemos el medfilt y puntosMaxCentro
%% Creamos nuevas celdas de medfilt
objDedo_medFilt = cell(43,1);
objPalma_medFilt = cell(43,1);

ordenFiltro = 400;
for i = 1:43
   if(i==7)
   else
       for k = 1:size(strSupPalma{i,1},1)
           objDedo_medFilt{i,1}{k,1} = medfilt1(strSupDedo{i,1}{k,1},ordenFiltro);
           objPalma_medFilt{i,1}{k,1} = medfilt1(strSupPalma{i,1}{k,1},ordenFiltro);
       end
   end
end

%% Nueva representacion para medfilt
% Creamos dos vectores de puntos maximos o centrales...
nObjetos = 43;
nIteraciones = 40; % minimas...(47)
puntosMaxCentrPalma = zeros(nIteraciones,nObjetos);
puntosMaxCentrDedo = zeros(nIteraciones,nObjetos);

% PLOTS DE SMALL-DIM DE LA PALMA
figure;hold on;box on;grid on;
for i = 1:43
   if(i==7)
   else
        subplot(7,7,i);
        hold on;grid on;box on;
        for k = 1:size(strSupPalma{i,1},1)
%             plot(strSupPalma{i,1}{k,1}(:,1));   %% ESTA LINEA ESTABA DESCOMENTADA
%             plot(objPalma_medFilt{i,1}{k,1}(:,1));   
%             title(strcat('medFiltObj-',num2str(i)));    
            hold on;
            indMax = find(objPalma_medFilt{i,1}{k,1}(:,1) == max(objPalma_medFilt{i,1}{k,1}(:,1)));
            indiceMaximo = indMax(round(length(indMax)/2),1);
%             plot(indiceMaximo,strSupPalma{i,1}{k,1}(indiceMaximo,1),'black.','MarkerSize',12); %% ESTA LINEA ESTABA DESCOMENTADA
%             title(strcat('medFiltObj-',num2str(i)));  %% ESTA LINEA ESTABA DESCOMENTADA
            puntosMaxCentrPalma(k,i) = indiceMaximo;
        end
   end
end
sgtitle('MATRIZ-PALMA-MEDFILT');

% PLOTS DE SMALL-DIM DEL DEDO
figure;hold on;box on;grid on;
for i = 1:43
   if(i==7)
   else
        subplot(7,7,i);
        hold on;grid on;box on;
        for k = 1:size(strSupDedo{i,1},1)
%             plot(strSupDedo{i,1}{k,1}(:,1));    %% ESTA LINEA ESTABA DESCOMENTADA
%             plot(objDedo_medFilt{i,1}{k,1}(:,1));   
%             title(strcat('medFiltObj-',num2str(i)));    
            hold on;
            indMax = find(objDedo_medFilt{i,1}{k,1}(:,1) == max(objDedo_medFilt{i,1}{k,1}(:,1)));
            indiceMaximo = indMax(round(length(indMax)/2),1);
%             plot(indiceMaximo,strSupDedo{i,1}{k,1}(indiceMaximo,1),'black.','MarkerSize',12); %% ESTA LINEA ESTABA DESCOMENTADA
%             title(strcat('medFiltObj-',num2str(i)));  %% ESTA LINEA ESTABA DESCOMENTADA
            puntosMaxCentrDedo(k,i) = indiceMaximo;
        end
   end
end
sgtitle('MATRIZ-DEDO-MEDFILT');



%% Para cada objeto (obj) de DEDO y PALMA hay que calcular 4 descriptores:
% Descriptor 1: Area
% Descriptor 2: Punto Maximo/Punto Central  -->  puntosMaxCentrPalma    puntosMaxCentrDedo
% Descriptor 3: Histeresis
% Descriptor 4: Anchura

% Creamos los nuevos cellArray
descrpSupDedo = cell(43,1);
descrpSupPalma = cell(43,1);

% Bucle de descriptores
for i = 1:43
% for i = 2:2
    if(i==7)
        % Trama erronea
    else
        nIteraciones = size(strSupDedo{i,1},1);
%         for k = 1:size(strSupDedo{i,1},1)
            indiceMaxCentrDedo = puntosMaxCentrDedo(:,i);
            descrpSupDedo{i,1} = computeDescriptorRigidez_v5(strSupDedo{i,1},nIteraciones,indiceMaxCentrDedo);
            indiceMaxCentrPalma = puntosMaxCentrPalma(:,i);
            descrpSupPalma{i,1} = computeDescriptorRigidez_v5(strSupPalma{i,1},nIteraciones,indiceMaxCentrPalma);            
%         end
    end   
end

%% Salvamos descrpSupDedo y descrpSupPalma
% save('descrpSupDedo.mat','descrpSupDedo');
% save('descrpSupPalma.mat','descrpSupPalma');

%% Vamos a hacer gráficos de barras y/o bigotes de los descriptores para ver cómo varían --Descriptor 1
close all;clc;
nIteraciones = 47;
numerosArray = 1:43; stringNumeros = cell(43,1); 

% DEDO
descrp1forDedoObj = zeros(43,4);
descrp2forDedoObj = zeros(43,4);
descrp3forDedoObj = zeros(43,4);
descrp4forDedoObj = zeros(43,4);
for i = 1:43
    if(i==7)
        % Trama mala
    else
        nIteraciones = size(descrpSupDedo{i,1},1);
        for k = 1:nIteraciones
            descrp1forDedoObj(k,i) = descrpSupDedo{i,1}{k,1}(1,1);            
            descrp2forDedoObj(k,i) = descrpSupDedo{i,1}{k,1}(2,1);            
            descrp3forDedoObj(k,i) = descrpSupDedo{i,1}{k,1}(3,1);            
            descrp4forDedoObj(k,i) = descrpSupDedo{i,1}{k,1}(4,1);
        end
    end
end

%% Tomamos los descriptores nuevos
desDedo1New = [descrp1forDedoObj(:,1:6), descrp1forDedoObj(:,8:end)];
desDedo2New = [descrp2forDedoObj(:,1:6), descrp2forDedoObj(:,8:end)];
desDedo3New = [descrp3forDedoObj(:,1:6), descrp3forDedoObj(:,8:end)];
desDedo4New = [descrp4forDedoObj(:,1:6), descrp4forDedoObj(:,8:end)];

desPalma1New = [descrp1forPalmaObj(:,1:6), descrp1forPalmaObj(:,8:end)];
desPalma2New = [descrp2forPalmaObj(:,1:6), descrp2forPalmaObj(:,8:end)];
desPalma3New = [descrp3forPalmaObj(:,1:6), descrp3forPalmaObj(:,8:end)];
desPalma4New = [descrp4forPalmaObj(:,1:6), descrp4forPalmaObj(:,8:end)];

close all;clc;
figure;

subplot(2,2,1);
% figure;
boxplot(desDedo1New, 'Colors', [0.5 0.5 0.9], 'Widths', 0.6);
box on;
ax = gca;
ax.XGrid = 'on';
set(gca, 'LineWidth', 1, 'FontSize', 12);
title('Característica AR (Área bajo la curva) para cada clase', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Clase');
ylabel('Valor de la característica');
set(findobj(gca, 'Tag', 'Outliers'), 'MarkerEdgeColor', [0.3 0.3 0.7], 'MarkerFaceColor', [0.5 0.5 0.9]);

subplot(2,2,2);
boxplot(desDedo2New, 'Colors', [0.5 0.7 0.5], 'Widths', 0.6);
box on;
ax = gca;
ax.XGrid = 'on';
set(gca, 'LineWidth', 1, 'FontSize', 12);
title('Característica MAX (máximo de la curva) para cada clase', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Clase');
ylabel('Valor de la característica');
set(findobj(gca, 'Tag', 'Outliers'), 'MarkerEdgeColor', [0.3 0.6 0.3], 'MarkerFaceColor', [0.5 0.7 0.5]);

subplot(2,2,3);
boxplot(desDedo3New, 'Colors', [0.8 0.5 0.5], 'Widths', 0.6);
box on;
ax = gca;
ax.XGrid = 'on';
set(gca, 'LineWidth', 1, 'FontSize', 12);
title('Característica H1 (Histéresis mitad ascendente de la curva) para cada clase', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Clase');
ylabel('Valor de la característica');
set(findobj(gca, 'Tag', 'Outliers'), 'MarkerEdgeColor', [0.7 0.3 0.3], 'MarkerFaceColor', [0.8 0.5 0.5]);

subplot(2,2,4);
boxplot(desDedo4New, 'Colors', [0.7 0.7 0.3], 'Widths', 0.6);
box on;
ax = gca;
ax.XGrid = 'on';
set(gca, 'LineWidth', 1, 'FontSize', 12);
title('Característica H2 (Histéresis mitad descendente de la curva) para cada clase', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Clase');
ylabel('Valor de la característica');
set(findobj(gca, 'Tag', 'Outliers'), 'MarkerEdgeColor', [0.5 0.5 0.2], 'MarkerFaceColor', [0.7 0.7 0.3]);

% sgtitle('Gráficos de Descriptores para Objetos', 'FontSize', 16, 'FontWeight', 'bold');

figure;

subplot(2,2,1);
% figure;
boxplot(desPalma1New, 'Colors', [0.5 0.5 0.9], 'Widths', 0.6);
box on;
ax = gca;
ax.XGrid = 'on';
set(gca, 'LineWidth', 1, 'FontSize', 12);
title('Característica AR (Área bajo la curva) para cada clase', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Clase');
ylabel('Valor de la característica');
set(findobj(gca, 'Tag', 'Outliers'), 'MarkerEdgeColor', [0.3 0.3 0.7], 'MarkerFaceColor', [0.5 0.5 0.9]);

subplot(2,2,2);
boxplot(desPalma2New, 'Colors', [0.5 0.7 0.5], 'Widths', 0.6);
box on;
ax = gca;
ax.XGrid = 'on';
set(gca, 'LineWidth', 1, 'FontSize', 12);
title('Característica MAX (máximo de la curva) para cada clase', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Clase');
ylabel('Valor de la característica');
set(findobj(gca, 'Tag', 'Outliers'), 'MarkerEdgeColor', [0.3 0.6 0.3], 'MarkerFaceColor', [0.5 0.7 0.5]);

subplot(2,2,3);
boxplot(desPalma3New, 'Colors', [0.8 0.5 0.5], 'Widths', 0.6);
box on;
ax = gca;
ax.XGrid = 'on';
set(gca, 'LineWidth', 1, 'FontSize', 12);
title('Característica H1 (Histéresis mitad ascendente de la curva) para cada clase', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Clase');
ylabel('Valor de la característica');
set(findobj(gca, 'Tag', 'Outliers'), 'MarkerEdgeColor', [0.7 0.3 0.3], 'MarkerFaceColor', [0.8 0.5 0.5]);

subplot(2,2,4);
boxplot(desPalma4New, 'Colors', [0.7 0.7 0.3], 'Widths', 0.6);
box on;
ax = gca;
ax.XGrid = 'on';
set(gca, 'LineWidth', 1, 'FontSize', 12);
title('Característica H2 (Histéresis mitad descendente de la curva) para cada clase', 'FontSize', 14, 'FontWeight', 'bold');
xlabel('Clase');
ylabel('Valor de la característica');
set(findobj(gca, 'Tag', 'Outliers'), 'MarkerEdgeColor', [0.5 0.5 0.2], 'MarkerFaceColor', [0.7 0.7 0.3]);

% sgtitle('Gráficos de Descriptores para Objetos', 'FontSize', 16, 'FontWeight', 'bold');


%%
figure;box on;
subplot(2,2,1);
boxchart(desPalma1New );box on;
title('Descriptor1 (area) para cada objeto -- DEDO M00');
% sgtitle('Descriptor1 (area) para cada objeto -- DEDO M00');
% figure;
subplot(2,2,2);
boxchart(descrp2forDedoObj);box on;
title('Descriptor2 (maximo) para cada objeto -- DEDO M00');
% figure;
subplot(2,2,3);
boxchart(descrp3forDedoObj);box on;
title('Descriptor3 (histeresis) para cada objeto -- DEDO M00');
% figure;
subplot(2,2,4);
boxchart(descrp4forDedoObj);box on;
title('Descriptor4 (histeresis 2) para cada objeto -- Palma M00');

% PALMA
descrp1forPalmaObj = zeros(43,4);
descrp2forPalmaObj = zeros(43,4);
descrp3forPalmaObj = zeros(43,4);
descrp4forPalmaObj = zeros(43,4);
for i = 1:43
    if(i==7)
        % Trama mala
    else
        nIteraciones = size(descrpSupDedo{i,1},1);
        for k = 1:nIteraciones
            descrp1forPalmaObj(k,i) = descrpSupPalma{i,1}{k,1}(1,1);            
            descrp2forPalmaObj(k,i) = descrpSupPalma{i,1}{k,1}(2,1);            
            descrp3forPalmaObj(k,i) = descrpSupPalma{i,1}{k,1}(3,1);            
            descrp4forPalmaObj(k,i) = descrpSupPalma{i,1}{k,1}(4,1);
        end
    end
end
figure;box on;
subplot(2,2,1);
boxchart(descrp1forPalmaObj);box on;
title('Descriptor1 (area) para cada objeto -- Palma M00');
% figure;
subplot(2,2,2);box on;
boxchart(descrp2forPalmaObj);
title('Descriptor2 (maximo) para cada objeto -- Palma M00');
% figure;
subplot(2,2,3);box on;
boxchart(descrp3forPalmaObj);
title('Descriptor3 (histeresis) para cada objeto -- Palma M00');
% figure;
subplot(2,2,4);box on;
boxchart(descrp4forPalmaObj);
title('Descriptor4 (histeresis 2) para cada objeto -- Palma M00');






%% Funcion para dividir los momentos en 51 iteraciones
function [momentumCell] = computeMomCellDesplazamiento(M00,M10,M01,M20,M11,M02,prominencia,puntoDesp,intervalo)
    
    %% Calculamos el tamaño o longitud total del array
    lastValue = length(M00);

    %% Calculamos los indices de los minimos
    mInd = find(islocalmin(M00, 'MinProminence', prominencia)==1);

    %% Ponemos todos los valores en orden
%     indicesMomentum = [1, mInd', lastValue];

    indicesMomentum = puntoDesp:intervalo:intervalo*53;

    %% Creamos cell array con 51 celdas
    momAuxCell = cell(51,1);

    %% Vamos diviendo el cell array
    k = 1;
    for i = 1:length(indicesMomentum)-1
        vAux = indicesMomentum(1,i):indicesMomentum(1,i+1);
%         if(length(vAux)>1000)
%         if(length(vAux)>1000)
            momAuxCell{k,1} = [M00(indicesMomentum(1,i):indicesMomentum(1,i+1),1), M10(indicesMomentum(1,i):indicesMomentum(1,i+1),1),...
                               M01(indicesMomentum(1,i):indicesMomentum(1,i+1),1), M20(indicesMomentum(1,i):indicesMomentum(1,i+1),1),...
                               M11(indicesMomentum(1,i):indicesMomentum(1,i+1),1), M02(indicesMomentum(1,i):indicesMomentum(1,i+1),1)];
            k = k+1;
%         end
    end

    %% Quitamos los valores de momAuxCell que den 0
    for i = 1:51
        MAT_AUX = momAuxCell{i,1};
%         MAT_AUX2 = MAT_AUX(any(MAT_AUX,2),:);
%         momAuxCell{i,1} = MAT_AUX2;
    end    
    momAuxCell{i,1} = MAT_AUX;

    %% Salida
    momentumCell = momAuxCell;

end
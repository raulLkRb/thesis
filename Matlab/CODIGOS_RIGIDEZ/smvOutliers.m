%% Función para técnica SMV de filtrado de Outliers
% Esta función calcula el SMV de la matriz y después la media y desviación
% típica y lo que quede por encima de desviación típica en valor absoluto
% se descarta.
%
% Inputs:
%   + MAT_VAR_N --> Matriz de partida con la que se va a trabajar
%   + T --> tamaño (a lo mejor M/2) con el que se va a trabajar
% Outputs:
%   + MOUTSMV --> Matriz de salida con los outliers quitados
function [MOUTSMV] = smvOutliers(MAT_VAR_N,T)

    % Creamos referencia
    refVector = ones(1,T);
    SMVVector = zeros(size(MAT_VAR_N,1),1);

    % Buble para calcular SMV
    for i = 1:size(MAT_VAR_N,1)
        v = MAT_VAR_N(i,1:T);
        SMVVector(i,1) = computeDistanciaEuclidea(v,refVector);
    end

    % Calculamos ahora la media y desviación típica de SMVVector
    meanSMV = mean(SMVVector);
    stdSMV = std(SMVVector);

    % Filtramos outliers
    ii = 0;
    MAT_VAR_NEW = [];
    for i = 1:size(SMVVector,1)
        if(SMVVector(i,1)<(meanSMV+stdSMV) && SMVVector(i,1)>(meanSMV-stdSMV))
            ii = ii + 1;
            MAT_VAR_NEW(ii,:) = MAT_VAR_N(i,:);
        end            
    end

    % Salida
    MOUTSMV = MAT_VAR_NEW;

end
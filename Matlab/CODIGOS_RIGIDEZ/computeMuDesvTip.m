function [M,STD_DEV] = computeMuDesvTip(dataTrainSWEEPFinal,labelTrainFinal,N_CLASES,centroide)

    % Declaramos parámetros -- FIGURA 1
    M = cell(1,N_CLASES);
    STD_DEV = cell(1,N_CLASES);
    
    for k = 1:N_CLASES
        indicesVectorNuevo = []; vectorNuevo = [];
        indicesVectorNuevo = find(labelTrainFinal == k);
        vectorNuevo = dataTrainSWEEPFinal(indicesVectorNuevo,:);
        distancia = zeros(1,size(vectorNuevo,1));
        for i = 1:size(vectorNuevo,1)
            for n = 1:size(vectorNuevo,2)
                distancia(1,i) = distancia(1,i) + sqrt((vectorNuevo(i,n)-centroide(k,n))^2);
            end
        end
        M{1,k} = mean(distancia);
        STD_DEV{1,k} = std(distancia);
    end

end
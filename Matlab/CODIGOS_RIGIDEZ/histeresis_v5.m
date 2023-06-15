%% Función para calcular la histeresis respecto al punto medio de un array
function [valorHisteresis] = histeresis_v5(array,indiceMaxCentr)

    % UMBRAL CORTE
    UMBRAL_CORTE = round(length(array)/2.1);

    % Tomamos los puntos mitad y final
    p1 = indiceMaxCentr;
    pInicio = p1-UMBRAL_CORTE;
    if(pInicio<1)
        pInicio = 1;
    end
    pFinal = p1+UMBRAL_CORTE;
    if(pFinal > length(array))
        pFinal = length(array);
    end

    %% Tomamos los valores
    % Umbrales
%     TH1 = 0.6;
    TH1 = 0.8;
    VECTOR1 = [pInicio:p1]; 
    value1 = round(TH1*length(VECTOR1));

    indice1a = value1;
    indice1b = p1+1+p1-value1;
    if(indice1a < 1)
        indice1a = 1;
    end
    if(indice1b > length(array))
        indice1b = length(array);
    end

    valor1a = array(indice1a,1);
    valor1b = array(indice1b,1);   

    DIFERENCIA1 = abs(valor1a);
    DIFERENCIA2 = abs(valor1b);

    valorHisteresis = DIFERENCIA1;
    
end
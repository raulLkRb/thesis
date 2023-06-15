%% Función que te calcula la varianza filtrada sin fi
% Inputs:
%       + aux_array: array de tamaño 2M+1
%       + M: número de puntos
%
% Outputs:
%       + outSWEEP: array de salida con el barrido (varianza) filtrada
function [outSWEEP] = SWEEPExecute(aux_array,M)

    % Definimos variables iniciales
    suma = zeros(1,M);
    v_temp = 0;

    % Ponemos que si aux_array[i]<0 --> aux_array[i] = 0
    for i = 1:size(aux_array,2)
        if(aux_array(1,i)<0)
            aux_array(1,i) = 0;
        end
    end

    % Aplicamos algoritmo (sin tiempo real)
    for v16 = 1:M
        for addr = 0:M-1
            sumaAux = aux_array(1,addr+1)-aux_array(1,addr+v16+1);
            product = sumaAux*sumaAux;
            v_temp = v_temp + product;
        end
        suma(1,v16-1+1) = v_temp/1024;
        v_temp = 0;
    end

    % Salida
    outSWEEP = suma;

end
%% Funcion: kmedioCentroide
function [cluster_idx] = kmedioCentroide(MATRIZ,k,centroide)
    X = MATRIZ';
    [n,dim] = size (X);
    % Cada objeto se asocia a su centroide mas cercano creado
    for i =1:n
        idx = -1;
        closet_distance = 1/0; % Valor muy grande
        for j =1:k
            % Distancia euclidea
            dist = sqrt(sum((X(i,:)-centroide(j,:)).^2));
            if(dist < closet_distance) % El grupo es el mas cercano
                idx = j;
                closet_distance = dist ;
            end
        end
        cluster_idx(i) = idx;
    end
end
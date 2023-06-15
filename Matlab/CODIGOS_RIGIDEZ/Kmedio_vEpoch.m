%% La función Kmedios es la siguiente:
function [cluster_idx, centroide, iter] = Kmedio_vEpoch(MATRIZ,k,L,MAX_EPOCH)
    % X datos de entrada
    % k numero de grupos
    % L etiquetas
    X = MATRIZ';
    [n,dim] = size(X); % n es el número de observaciones, dim es el tamaño de cada observacion
    % Inicializar
    centroide_ant = zeros(k,dim);
    centroide_suma = zeros(k,dim);
    member_count = zeros(k,1);
    cluster_idx_ant = zeros(1,n);
    estable = 0;
    iter = 0;


    % Dividir los datos de entrada en k grupos aleatorios y calcular el centroide de cada grupo
    for i = 1:k
        indice = find(L==i);
        
        p = length(indice);

        if(p==0)
            centroide(i,:) = zeros(1,size(X,2));
        else        
    %         indice_de_indice = randi([indice(1) indice(p)], 1 ,1); CREO QUE ESTA LINEA PUEDE QUE ESTÉ MAL
            indice_de_indice = randi([1 p], 1 ,1);
            tam = length(indice);
            centroide(i,:) = X(indice(indice_de_indice),:);
        end
    end

    % En cada iteracion del siguiente while barajamos X
    epoch = 1;
%     while(epoch < MAX_EPOCH)
% 
%         while(estable == 0)

        while(estable == 0 && epoch < MAX_EPOCH)
            % Cada objeto se asocia a su centroide mas cercano creando nuevos k grupos
            for i = 1:n
                idx = -1;
                closet_distance = 1/0; % Valor muy grande
                for j = 1:k
                    % Distancia euclidea
                    dist = sqrt(sum((X(i,:)-centroide(j,:)).^2));
                    % Si e s t m s cerca cambiar la etiqueta
                    if ( dist < closet_distance )
                        idx = j;
                        closet_distance = dist ;
                    end
                end
                cluster_idx(i) = idx;
            end
            % Recalcular centroide ( promedio )
            member_count = zeros(k,1);
            centroide_suma = zeros(k,dim);
            for i = 1:n  % Sumar todos los puntos de un grupo
                indice = cluster_idx(i);
                % Saber cuantos datos hay en un grupo
                member_count(indice) = member_count(indice) + 1;
                % Sumar todos los datos de un grupo
                centroide_suma(indice,:) = centroide_suma(indice,:) + X(i,:);
            end
            for j = 1:k
                if(member_count(j) == 0)
                    fprintf('La clase %d no consta\r\n',j);
                    estable = 1;
                else
                    %calcular centroide de cada grupo
                    centroide(j,:) = centroide_suma(j,:)./member_count(j);
                end
            end
            mean(centroide');
            %Repetir hasta que se estabilicen los centroides
            if(isequal(centroide_ant,centroide))
%             if(abs(norm(centroide_ant)-norm(centroide))<1e3)
                estable = 1;
            end
            centroide_ant = centroide;
            iter = iter + 1;
%         end
        
            % Cambiamos orden de X
            n = size(X,1);
            vInd = randperm(n);
            X_AUX = X(vInd,:);
            L_AUX = L(:,vInd);
            X = X_AUX;
            L = L_AUX;
    
            % Volvemos a pone estable a 0 e iter = 0
%             estable = 0;
%             iter = 0;
    
            % Aumentamos iteracion del bucle while
            epoch = epoch + 1;

        end

%     end

end





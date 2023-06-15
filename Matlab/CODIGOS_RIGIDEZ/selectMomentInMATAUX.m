%% Función para seleccionar los momentos correspondientes que se quiera
% INPUTS:
%   --> MAT_AUXILIAR, matriz con todos los datos
%   --> indMomentos, que puede tomar los valores de 1 a 6 posibles momentos
%   --> optDedoPalma, 0 (dedo), 1 (palma), 2 (dedo y palma)
%   --> indDescrpCual, puede valer de 1 a 15
%
% OUTPUTS:
%   --> MAT_AUXILIAR_OUT: Matriz auxiliar con lo seleccionado
%
function [MAT_AUXILIAR_OUT] = selectMomentInMATAUX(MAT_AUXILIAR,indMomentos,optDedoPalma,indDescrpCual)

    % Seleccionamos primero factor de multiplicación
    switch indDescrpCual
        case 1
            factorMult = 1;
        case 2
            factorMult = 1;
        case 3
            factorMult = 1;            
        case 4
            factorMult = 1;
        case 5
            factorMult = 2;
        case 6
            factorMult = 2;
        case 7
            factorMult = 2;
        case 8
            factorMult = 2;
        case 9 
            factorMult = 2;
        case 10
            factorMult = 2;
        case 11
            factorMult = 3;            
        case 12
            factorMult = 3;
        case 13
            factorMult = 3;
        case 14
            factorMult = 3;
        case 15
            factorMult = 4;
        otherwise
          error('Error, no existe este descriptor');  
    end
    
    % Seleccionamos dedo, palma o dedo y palma
    switch optDedoPalma
        case 0   % solo dedo
            [MAT_AUXILIAR_OUT] = dedoSelectMom(MAT_AUXILIAR,indMomentos,factorMult);
        case 1   % solo palma
            [MAT_AUXILIAR_OUT] = palmaSelectMom(MAT_AUXILIAR,indMomentos,factorMult);
        case 2   % dedo y palma
            [MAT_AUXILIAR_OUT] = dedoYpalmaSelectMom(MAT_AUXILIAR,indMomentos,factorMult);
        otherwise
          error('Error, no se sabe si es dedo, palma o dedo y palma');        
    end

    % Caso del dedo solo
    function [MAT_AUXILIAR_OUT] = dedoSelectMom(MAT_AUXILIAR,indMomentos,factorMult)
        
        
        % Tamaño matriz (SOLO DATOS)
        tam1 = size(MAT_AUXILIAR,1)-1;

        % Seleccionamos qué momentos queremos
        switch indMomentos
            case 1
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:1*factorMult,:); MAT_AUXILIAR(end,:)];
            case 2
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:2*factorMult,:); MAT_AUXILIAR(end,:)];
            case 3
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:3*factorMult,:); MAT_AUXILIAR(end,:)];
            case 4
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:4*factorMult,:); MAT_AUXILIAR(end,:)];
            case 5
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:5*factorMult,:); MAT_AUXILIAR(end,:)];
            case 6
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:6*factorMult,:); MAT_AUXILIAR(end,:)];
            otherwise
                error('No hay momento'); 
        end
        
        
%         % Seleccionamos qué momentos queremos
%         switch indMomentos
%             case 1
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1,:); MAT_AUXILIAR(end,:)];
%             case 2
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:2,:); MAT_AUXILIAR(end,:)];
%             case 3
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:3,:); MAT_AUXILIAR(end,:)];
%             case 4
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:4,:); MAT_AUXILIAR(end,:)];
%             case 5
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:5,:); MAT_AUXILIAR(end,:)];
%             case 6
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:6,:); MAT_AUXILIAR(end,:)];
%             otherwise
%                 error('No hay momento'); 
%         end

    end


    % Caso de la palma solo
    function [MAT_AUXILIAR_OUT] = palmaSelectMom(MAT_AUXILIAR,indMomentos,factorMult)
        
        
        % Tamaño matriz (SOLO DATOS)
        tam1 = size(MAT_AUXILIAR,1)-1;

        % Seleccionamos qué momentos queremos
        switch indMomentos
            case 1
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR((tam1/2+1):7*factorMult,:); MAT_AUXILIAR(end,:)];
            case 2
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR((tam1/2+1):8*factorMult,:); MAT_AUXILIAR(end,:)];
            case 3
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR((tam1/2+1):9*factorMult,:); MAT_AUXILIAR(end,:)];
            case 4
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR((tam1/2+1):10*factorMult,:); MAT_AUXILIAR(end,:)];
            case 5
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR((tam1/2+1):11*factorMult,:); MAT_AUXILIAR(end,:)];
            case 6
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR((tam1/2+1):12*factorMult,:); MAT_AUXILIAR(end,:)];
            otherwise
                error('No hay momento'); 
        end
        
%         % Seleccionamos qué momentos queremos
%         switch indMomentos
%             case 1
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(7,:); MAT_AUXILIAR(end,:)];
%             case 2
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(7:8,:); MAT_AUXILIAR(end,:)];
%             case 3
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(7:9,:); MAT_AUXILIAR(end,:)];
%             case 4
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(7:10,:); MAT_AUXILIAR(end,:)];
%             case 5
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(7:11,:); MAT_AUXILIAR(end,:)];
%             case 6
%                 MAT_AUXILIAR_OUT = [MAT_AUXILIAR(7:12,:); MAT_AUXILIAR(end,:)];
%             otherwise
%                 error('No hay momento'); 
%         end

    end


    % Caso del dedo y palma
    function [MAT_AUXILIAR_OUT] = dedoYpalmaSelectMom(MAT_AUXILIAR,indMomentos,factorMult)
        
        % Tamaño matriz (SOLO DATOS)
        tam1 = size(MAT_AUXILIAR,1)-1;

        % Seleccionamos qué momentos queremos
        switch indMomentos
            case 1
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:1*factorMult,:); MAT_AUXILIAR((tam1/2+1):7*factorMult,:); MAT_AUXILIAR(end,:)];
            case 2
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:2*factorMult,:); MAT_AUXILIAR((tam1/2+1):8*factorMult,:); MAT_AUXILIAR(end,:)];
            case 3
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:3*factorMult,:); MAT_AUXILIAR((tam1/2+1):9*factorMult,:); MAT_AUXILIAR(end,:)];
            case 4
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:4*factorMult,:); MAT_AUXILIAR((tam1/2+1):10*factorMult,:); MAT_AUXILIAR(end,:)];
            case 5
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:5*factorMult,:); MAT_AUXILIAR((tam1/2+1):11*factorMult,:); MAT_AUXILIAR(end,:)];
            case 6
                MAT_AUXILIAR_OUT = [MAT_AUXILIAR(1:6*factorMult,:); MAT_AUXILIAR((tam1/2+1):12*factorMult,:); MAT_AUXILIAR(end,:)];
            otherwise
                error('No hay momento'); 
        end

    end

end




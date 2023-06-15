%% Esta función te calcula los 6 primeros momentos de la imagen
function [M00, M10, M01, M20, M11, M02] = computeMomentum(MM)
    
    %% Calculo de los momentos
    M00 = 0;
    M10 = 0;
    M01 = 0;
    M20 = 0;
    M11 = 0;
    M02 = 0;
    for x = 1:size(MM,1)
        for y = 1:size(MM,2)
            M00 = M00 + MM(x,y);
            M10 = M10 + x*MM(x,y);
            M01 = M01 + y*MM(x,y);
            M20 = M20 + x^2*MM(x,y);
            M11 = M11 + x*y*MM(x,y);
            M02 = M02 + y^2*MM(x,y);
        end
    end

end
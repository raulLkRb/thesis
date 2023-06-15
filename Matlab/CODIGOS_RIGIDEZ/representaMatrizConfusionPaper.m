function [y] = representaMatrizConfusion(trueLabels,predictedLabels,mascara,velocidad,tipoDescriptor,indiceDescriptor,outlierString,centroideString)

    % Las entradas trueLabels y predictedLabels deben ser vectores columna    
    C = confusionmat(trueLabels,predictedLabels);   
    confmat = C; % sample data

    nObjetos = 42;

    % Vector de texturas completo
    vectorTextCompleto = 1:nObjetos;

    % Texturas a tener en cuenta
    texturasBuenas = vectorTextCompleto.*mascara;

    labelsTexturas = cell(1,nObjetos);

    numElems = 0;
    for i = 1:nObjetos
        if(texturasBuenas(1,i) ~= 0)
            numElems = numElems + 1;
        end
    end

    labelsTexturas = cell(1,numElems);
    k = 1;
    for i = 1:nObjetos
        if(texturasBuenas(1,i) ~= 0)
            varTonta = texturasBuenas(1,i);
            labelsTexturas{1,k} = ['\fontsize{18}#OBJ-' num2str(varTonta)];   
            k = k+1;
        end
    end


%     for i = 1:nObjetos
%        labelsTexturas{1,i} = ['\fontsize{35}#TEX' num2str(i)];     
%     end


    figuraEsta = figure;

    plotConfMat(confmat,labelsTexturas,velocidad,tipoDescriptor,indiceDescriptor,outlierString,centroideString);
    

%     fig = findall(0, 'type','figure');
    fig = findall(figuraEsta, 'type','figure');
    fig.Position = [1 41 1920 963];
    ax = gca; outerpos = ax.OuterPosition; ti = ax.TightInset;  left = outerpos(1) + ti(1); bottom = outerpos(2) + ti(2); ax_width = outerpos(3) - ti(1) - ti(3); ax_height = outerpos(4) - ti(2) - ti(4); ax.Position = [left bottom ax_width ax_height];
    
    

    % Salida de la funcion
    y = figuraEsta;

end
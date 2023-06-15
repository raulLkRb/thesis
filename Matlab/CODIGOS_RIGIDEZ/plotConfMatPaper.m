function plotConfMat(varargin)
%PLOTCONFMAT plots the confusion matrix with colorscale, absolute numbers
%   and precision normalized percentages
%
%   usage: 
%   PLOTCONFMAT(confmat) plots the confmat with integers 1 to n as class labels
%   PLOTCONFMAT(confmat, labels) plots the confmat with the specified labels
%
%   Vahe Tshitoyan
%   20/08/2017
%
%   Arguments
%   confmat:            a square confusion matrix
%   labels (optional):  vector of class labels

% number of arguments
switch (nargin)
    case 0
       confmat = 1;
       labels = {'1'};
    case 1
       confmat = varargin{1};
       labels = 1:size(confmat, 1);
    otherwise
       confmat = varargin{1};
       labels = varargin{2};
end

velocidad = varargin{3};
tipoDescriptor = varargin{4};
indiceDescriptor = varargin{5};
outliersString = varargin{6};
centroideString = varargin{7};

confmat(isnan(confmat))=0; % in case there are NaN elements
numlabels = size(confmat, 1); % number of labels

% calculate the percentage accuracies
confpercent = 100*confmat./repmat(sum(confmat, 1),numlabels,1);

% plotting the colors
imagesc(confpercent);
if(tipoDescriptor == 1)
    title(sprintf('Accuracy: %.2f%%. Descriptor: GD.', 100*trace(confmat)/sum(confmat(:))), sprintf('Speed V = %d', velocidad));
elseif(tipoDescriptor == 2)
    title(sprintf('Accuracy: %.2f%%. Descriptor: VMM.', 100*trace(confmat)/sum(confmat(:))), sprintf('Speed V = %d', velocidad));
elseif(tipoDescriptor == 3)
    title(sprintf('Accuracy: %.2f%%. Descriptor: Sweep.', 100*trace(confmat)/sum(confmat(:))), sprintf('Speed V = %d', velocidad));
else
    title(sprintf('Accuracy: %.2f%%. Descriptor: FFT.', 100*trace(confmat)/sum(confmat(:))), sprintf('Speed V = %d', velocidad));
end

ylabel('Output Class'); xlabel('Target Class');

% set the colormap
colormap(flipud(gray));

% Create strings from the matrix values and remove spaces
% textStrings = num2str([confpercent(:), confmat(:)], '%.1f%%\n%d\n');  % CON PORCENTAJES
textStrings = num2str(confmat(:), '\n%d\n');                            % SIN PORCENTAJES
textStrings = strtrim(cellstr(textStrings));

% Create x and y coordinates for the strings and plot them
[x,y] = meshgrid(1:numlabels);
hStrings = text(x(:),y(:),textStrings(:), ...
    'HorizontalAlignment','center','FontSize',24);

% Get the middle value of the color range
midValue = mean(get(gca,'CLim'));

% Choose white or black for the text color of the strings so
% they can be easily seen over the background color
textColors = repmat(confpercent(:) > midValue,1,3);
set(hStrings,{'Color'},num2cell(textColors,2));

% Setting the axis labels
set(gca,'XTick',1:numlabels,...
    'XTickLabel',labels,...
    'YTick',1:numlabels,...
    'YTickLabel',labels,...
    'TickLength',[0 0],'FontSize',18);

% Guardamos figura:
if(tipoDescriptor == 1)% && indiceDescriptor == 16)
    str1a = compose('matrizConfV%dtipoDescriptorGN-%d-%s-%s',velocidad,indiceDescriptor,outliersString,centroideString);
%     saveas(gcf,str1a{1,1},'fig');
%     str1b = compose('matrizConfV%dtipoDescriptorGN',velocidad);
%     saveas(gcf,str1b{1,1},'png');
%     str1c = compose('matrizConfV%dtipoDescriptorGN',velocidad);
%     saveas(gcf,str1c{1,1},'jpg');
elseif(tipoDescriptor == 2)% && indiceDescriptor == 16)
    str1a = compose('matrizConfV%dtipoDescriptorVMM-%d-%s-%s',velocidad,indiceDescriptor,outliersString,centroideString);
%     saveas(gcf,str1a{1,1},'fig');
%     str1b = compose('matrizConfV%dtipoDescriptorVMM',velocidad);
%     saveas(gcf,str1b{1,1},'png');
%     str1c = compose('matrizConfV%dtipoDescriptorVMM',velocidad);
%     saveas(gcf,str1c{1,1},'jpg');
elseif(tipoDescriptor == 3)% && indiceDescriptor == 8)
    str1a = compose('matrizConfV%dtipoDescriptorVAR-%d-%s-%s',velocidad,indiceDescriptor,outliersString,centroideString);
%     saveas(gcf,str1a{1,1},'fig');
%     str1b = compose('matrizConfV%dtipoDescriptorVAR',velocidad);
%     saveas(gcf,str1b{1,1},'png');
%     str1c = compose('matrizConfV%dtipoDescriptorVAR',velocidad);
%     saveas(gcf,str1c{1,1},'jpg');
elseif(tipoDescriptor == 4)% && indiceDescriptor == 8)
    str1a = compose('matrizConfV%dtipoDescriptorFFT-%d-%s-%s',velocidad,indiceDescriptor,outliersString,centroideString);
%     saveas(gcf,str1a{1,1},'fig');
%     str1b = compose('matrizConfV%dtipoDescriptorVAR',velocidad);
%     saveas(gcf,str1b{1,1},'png');
%     str1c = compose('matrizConfV%dtipoDescriptorVAR',velocidad);
%     saveas(gcf,str1c{1,1},'jpg');
end


end
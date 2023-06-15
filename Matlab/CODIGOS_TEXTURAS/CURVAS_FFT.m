%% Limpiamos y cerramos todo
clear all;close all;clc;

%% Cargamos datos de varianza por textura
load('noOutlDataFFT.mat');

% %% Representamos los datos
% figure;
% for i = 1:12    
%     subplot(4,3,i);
%     vectorFFT = dataFFTTactel{i,1};
%     vectorFFT(:,1) = 1;
%     y = mean(vectorFFT(:,1:1024));    
%     x = 0:1/485:1024*1/485-1/485;
%     std_dev = std(vectorFFT(:,1:1024));
%     curve1 = y + std_dev;
%     curve2 = y - std_dev;
%     x2 = [x, fliplr(x)];
%     inBetween = [curve1, fliplr(curve2)];
% %     fill(x2,inBetween,[0.5843 0.8157 0.9882],'LineStyle','none');
%     fill(x2,inBetween,[0.5843 0.9882 0.8157],'LineStyle','none');
%     hold on;
%     ax = gca;hold on;
%     set(ax,'FontSize',15);hold on;
%     ax.LineWidth = 1.5;
%     set(ax,'TickLength',[0.02, 0.02]);
%     axis([0 x(1,end) min(curve2) max(curve1)]);
%     hold on;box on;
%     plot(x,y,'black','LineWidth',1.3);
%     legend('\sigma','\mu');
%     tit = strcat('VAR #TEX-',num2str(i));
%     title(tit);
%     xlabel('D [s]');  
% end
%     

%% Representamos los datos
h2 = figure;
% Set the figure size:
set(h2, 'Position',[100   100   1600   950]);  
for i = 1:12    
    ab = subplot(4,3,i);
    vectorFFT = dataFFTTactel{i,1};
    vectorFFT(:,1) = 1;
    y = mean(vectorFFT(:,1:1024));    
%     xx = 0:1/485:1024*1/485-1/485;
    xx = 0:485/(30*1024):485/30-485/(30*1024);
    std_dev = std(vectorFFT(:,1:1024));
    curve1 = y + std_dev;
    curve2 = y - std_dev;
    x2 = [xx, fliplr(xx)];
    inBetween = [curve1, fliplr(curve2)];
    fill(x2,inBetween,[0.5843 0.9882 0.8157],'LineStyle','none');
    hold on;
    ax = gca;hold on;
    set(ax,'FontSize',15);hold on;
    ax.LineWidth = 1.5;
    set(ax,'TickLength',[0.02, 0.02]);
    axis([0 xx(1,end) min(curve2) max(curve1)]);
    hold on;box on;
    plot(xx,y,'black','LineWidth',1.3);
    legend('\sigma','\mu');
    tit = strcat('FFT #TEX-',num2str(i));
    title(tit);
    xlabel('[mm]^{-1}'); 
    
%     % Link the x axes:
    linkaxes(ab,'x');    
%     
%     % Once happy with your figure, add an inset:
    MagInset(h2, ab, [0.01 2 0 max(y)], [4 12 min(curve2)+0.2*max(curve1) max(curve1)-0.25*max(curve1)], {'NW','NW';'SE','SE'});
% 
% %     MagInset(h2, ab, [0.01 0.2 0 max(y)], [0.4 1.5 min(curve2)+0.2*max(curve1) max(curve1)-0.25*max(curve1)], {'NW','NW';'SE','SE'});

end
    






























%% Limpiamos y cerramos todo
clear all;close all;clc;

%% Cargamos datos de varianza por textura
load('noOutlDataSweep.mat');

%% Representamos los datos
figure;
for i = 1:12    
    subplot(4,3,i);
    y = mean(dataSWEEPTactel{i,1});    
    x = 0:1/485:1024*1/485-1/485;
    std_dev = std(dataSWEEPTactel{i,1});
    curve1 = y + std_dev;
    curve2 = y - std_dev;
    x2 = [x, fliplr(x)];
    inBetween = [curve1, fliplr(curve2)];
    fill(x2,inBetween,[0.5843 0.8157 0.9882],'LineStyle','none');
    hold on;
    ax = gca;hold on;
    set(ax,'FontSize',15);hold on;
    ax.LineWidth = 1.5;
    set(ax,'TickLength',[0.02, 0.02]);
    axis([0 x(1,end) min(curve2) max(curve1)]);
    hold on;box on;
    plot(x,y,'black','LineWidth',2);
    legend('\sigma','\mu');
    tit = strcat('VAR #TEX-',num2str(i));
    title(tit);
    xlabel('D [s]');  
end
    































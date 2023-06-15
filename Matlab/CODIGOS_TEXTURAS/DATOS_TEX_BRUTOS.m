%% Cerramos todo
close all;

%% Representamos cada textura vi
xx = 1:1:2048;
x = (30/485).*xx;

figure;
subplot(4,3,1);
rango = 1:200;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-1');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,2);
rango = 201:400;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-2');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,3);
rango = 401:600;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-3');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,4);
rango = 601:800;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-4');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,5);
rango = 801:983;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-5');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,6);
rango = 984:1130;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-6');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,7);
rango = 1131:1276;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-7');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,8);
rango = 1277:1430;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-8');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,9);
rango = 1431:1630;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-9');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,10);
rango = 1631:1821;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-10');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,11);
rango = 1822:2002;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-11');
xlabel('[mm]');
ylabel('\alpha F');

subplot(4,3,12);
rango = 2003:2194;
indiceV = round(length(rango)*rand(1));
ax = gca;hold on;
set(ax,'FontSize',15);hold on;
ax.LineWidth = 1.5;
set(ax,'TickLength',[0.02, 0.02]);
axis([0 x(1,end) min(MSINOUTLIERS(rango(indiceV),1:2048)) max(MSINOUTLIERS(rango(indiceV),1:2048))]);
hold on;box on;
plot(x,MSINOUTLIERS(rango(indiceV),1:2048),'b','LineWidth',1.5);
title('#TEX-12');
xlabel('[mm]');
ylabel('\alpha F');



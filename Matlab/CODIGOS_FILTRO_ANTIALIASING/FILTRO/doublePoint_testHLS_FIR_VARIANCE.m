%% SIMULACION DE APLICACION DEL ALGORITMO DE BARRIDO
% DEPARTAMENTO DE ELECTRÓNICA
%% Cálculo del M mínimo necesario para el caso más desfavorable
% inputVector = TACTEL(1:32768,1);
inputVector = data_in';
M = 1024/2;
GAR = doublePointAlg(M,inputVector);
FS = 215; TS = 1/FS;
x = 1:M;
x = x.*TS;
figure; plot(x,GAR);


% for i=1:NGR   
%     GARD{i,1} = doublePointAlg(nIt,inputVector(j+1:(j+1)+2*M-1,1));
% %     GAR{i,1} = fixedPointAlg(nIt,inputVector(j+1:(j+1)+2*M-1,1));
%     GAR{i,1} = fixedPointAlg42(nIt,inputVector(j+1:(j+1)+2*M-1,1));
%     maxMag = max(maxMag,max(GAR{i,1}));
%     j = j+1;
% end

%% Creamos un bucle de nG veces - Test Application - Secuencial
% Y = cell(nM-1,1);
% nIt = M/2;        % ¡ojo! no está bien, no es M/2, es M
% j = 0;
% for i = 0:nM-1
%     varArray = doublePointAlg(nIt,TACTEL(j*M+1:(j*M+1)+M-1,1));
%     Y{i+1,1} = varArray;
%     varArray = [];    
%     j = j+1;
%     A=1;
% end

%% Intento de plotear GAR
% Configuración de Figure
figure(2); hold on; grid off;
ax = gca;
box on;
set(ax,'FontSize',40);
ax.LineWidth = 3;
set(ax,'TickLength',[0.02, 0.02]);
ax.XAxis.Limits(1) = 0; ax.XAxis.Limits(2) = NGR*(M)*TS;
ax.YAxis.Limits(1) = 0; ax.YAxis.Limits(2) = 1;
ax.XAxis.TickValues = ax.XAxis.Limits(1):(NGR*(M)*TS)/5:ax.XAxis.Limits(2);
ax.YAxis.TickValues = ax.YAxis.Limits(1):1/5:ax.YAxis.Limits(2);
ax.XAxis.MinorTick = 'on';
ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):(NGR*(M)*TS)/10:ax.XAxis.Limits(2);
ax.YAxis.MinorTick = 'on';
ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):1/10:ax.YAxis.Limits(2);

% Ejecución del plot
for i = 0:NGR-1
    xAxis = i*(nIt)+1:(i*(nIt)+1)+(nIt)-1;
    plot(xAxis.*TS,GAR{i+1,1}./maxMag(1,1),'b');hold on;
    xAxis = [];
end

% Configuración etiquetas de los ejes
xlabel('t(s)');
ylabel('$\alpha F^2$','Interpreter','latex');

% Configuración de la leyenda
leg1 = legend('$V = \sum_{n=0}^M{(T_j(vt_n)-Tj(v(t_n+D)))^2}$');
set(leg1,'Interpreter','latex');
set(leg1,'FontSize',20);

























%% Vamos a ver la respuesta en frecuencia de la señal de BioRob de 13 mm, que es en la que más se puede notar quizá el movimiento de baja frecuencia del dedo
% Constants
close all;
fft_size     = 256;
data_samples = 256;
window_name  = @hamming;
window_name2 = @kaiser;
window_name3 = @rectwin;

%% Frecuencia de muestreo
FS = 215; TS = 1/FS;

%% Construimos el filtro a partir de los coeficientes del mismo
coeff3 = NumP;
fir3 = fir_compiler_v7_2_bitacc('coeff',coeff3,'coeff_width',16,'coeff_fract_width',15,'data_width',16,'data_fract_width',14,'reloadable',1,'quantization',1,'PersistentMemory',true);
fvtool(coeff3);
config3 = get_configuration(fir3);

%% Plot source and quantized filter coefficients
% Mirar paper --> se coge 20 mm^-1,  porque es la máxima estimación de a lo
% que se va a llegar a detectar como baja frecuencia medido en distancia
% La ventana es de 2048 muestras, porque se ha cogido un tamaño de ventana
% de fft_size = 4096.
disp('INFO: Plot quantized coefficients vs source coefficients');
figure;
fr_filter       = fft(config3.coeff,fft_size);
fr_filter_quant = fft(filter(fir3,[1,zeros(1,size(NumP,2))]),fft_size);
plot(0:20/(fft_size/2):20-20/(fft_size/2),20*log10(abs(fr_filter(1:fft_size/2))./max(abs(fr_filter))),'Color',[0.1 0.4 0.6],'LineWidth',4);
hold on;
grid on;
plot(0:20/(fft_size/2):20-20/(fft_size/2),20*log10(abs(fr_filter_quant(1:fft_size/2))./max(abs(fr_filter_quant))),'LineStyle','--','Color',[0.1 0.9 0.1],'LineWidth',4);
legend('Source Coefficients',['Quantized Coefficients: Fix',num2str(config3.coeff_width),'-frac',num2str(config3.coeff_fract_width),' bits']);
xlabel('Hz (1/mm)');ylabel('Magnitude Filter Response (dB)');
title(['Coefficient Quantization. Filter order: ',num2str(size(NumP,2))]);

%% Dibujamos señal TACTEL
% Create an input data vector
% - Scaled to match the default models data format; Fix16_0
disp('INFO: Taking input data...');
data_in = TACTEL(3001:3000+data_samples,1)';
% data_in = TACTEL(20001:20000+data_samples,1)';
xx = 1:data_samples;
t = xx.*10.*(TS);
%y_in = sin(2*pi*(1/0.05).*t);% + sin(2*pi*(1/0.08).*t) + sin(2*pi*(1/0.1).*t);
y_in = sin(2*pi*(1/24).*t);
figure;plot(t,y_in);
% data_in = y_in;

% Pintamos los datos
figure();hold on; grid off;
plot([1:data_samples].*TS,data_in(1,1:data_samples),'blue-','LineWidth',3);
xlabel('Segundos');
ylabel('Amplitud \alpha fuerza');
% title('Input data from sample 150 to sample 200');
ax = gca;
box on;
set(ax,'FontSize',40);
% ax.LineWidth = 3;
% set(ax,'TickLength',[0.02, 0.02]);
% ax.XAxis.Limits(1) = 0; ax.XAxis.Limits(2) = data_samples;
% ax.YAxis.Limits(1) = 0; ax.YAxis.Limits(2) = 70000;
% ax.XAxis.TickValues = ax.XAxis.Limits(1):1000:ax.XAxis.Limits(2);
% ax.YAxis.TickValues = ax.YAxis.Limits(1):10000:ax.YAxis.Limits(2);
% ax.XAxis.MinorTick = 'on';
% ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):500:ax.XAxis.Limits(2);
% ax.YAxis.MinorTick = 'on';
% ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):5000:ax.YAxis.Limits(2);
title('Señal sin filtrar,1024 muestras,P=3.25mm');

%% Aplicamos filtro
% Filter data
disp('INFO: Filtering with default configuration...');
data_out = filter(fir3,data_in);

% Comparamos data_in y data_out
figure; hold on;
box on;
plot([1:data_samples].*TS,data_in,'b');
plot([1:data_samples].*TS,data_out,'r');
xlabel('Segundos');
ylabel('Amplitud \alpha fuerza');
legend('data in','data out');
title('Señal sin filtrar vs señal filtrada antialiasing');
ax = gca;
box on;
set(ax,'FontSize',40);

% Plot normalized filter response, input data and output data
disp('INFO: Plot filter response, input data and output data');
% fr_filter_quant = fft(filter(fir3,[1,zeros(1,size(NumP,2))]),fft_size);
fr_data_in  = fft(data_in.*window(window_name,data_samples)',fft_size);
fr_data_out = fft(data_out.*window(window_name,data_samples)',fft_size);
figure();hold on; grid off;
plot(20*log10(abs(fr_filter_quant(1:fft_size/2))./max(abs(fr_filter_quant))),'blue-','LineWidth',3);
plot(20*log10(abs(fr_data_in(1:fft_size/2))./max(abs(fr_data_in))),'red-','LineWidth',3);
plot(20*log10(abs(fr_data_out(1:fft_size/2))./max(abs(fr_data_out))),'black--','LineWidth',3);
xlabel('Frequency (Normalized to window size/2 --> 0 to 4096 (Fs=215 Hz//B=107Hz==0.05mm))');
ylabel('[dB]');
legend(['Quantized Coefficients: Fix',num2str(config3.coeff_width),'-frac',num2str(config3.coeff_fract_width),' bits'],'Data in','Data out');
title('Filter frequency response');
ax = gca;
box on;
set(ax,'FontSize',40);
ax.LineWidth = 3;
set(ax,'TickLength',[0.02, 0.02]);
ax.XAxis.Limits(1) = 0; ax.XAxis.Limits(2) = (fft_size/2);
ax.YAxis.Limits(1) = -140; ax.YAxis.Limits(2) = 10;
ax.XAxis.TickValues = ax.XAxis.Limits(1):500:ax.XAxis.Limits(2);
ax.YAxis.TickValues = ax.YAxis.Limits(1):25:ax.YAxis.Limits(2);
ax.XAxis.MinorTick = 'on';
ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):250:ax.XAxis.Limits(2);
ax.YAxis.MinorTick = 'on';
ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):12.5:ax.YAxis.Limits(2);



%% FILTRO - VARIANZA - SEÑAL 
%% Calculamos la señal de varianza (no uso el fixedPointAlg porque tarda mucho en computar)
M = data_samples/2;
% M = 32768/2;
% M = 8192/2;
% inputVector = TACTEL(1:2*M,1);

inputVector = data_out';
inputVector = data_in';

GAR = doublePointAlg(M,inputVector);
FS = 215; TS = 1/FS;
x = 1:M;
% x = x.*TS;
landa = 3.25; % milímetros
velocidad = 10; % milímetros/segundo
xVar = x.*(TS);

% Pintamos los datos
figure();hold on; grid off;
plot(xVar,GAR,'blue-','LineWidth',3);
xlabel('D [s]');
ylabel('Variance amplitude');
title('Varianza de la señal filtrada con Antialiasing');
% title('Input data from sample 150 to sample 200');
ax = gca;
box on;
% ax.LineWidth = 3;
% set(ax,'FontSize',40);

% set(ax,'TickLength',[0.02, 0.02]);
% ax.XAxis.Limits(1) = 0; ax.XAxis.Limits(2) = M;
% ax.YAxis.Limits(1) = 0; ax.YAxis.Limits(2) = 5e10;
% ax.XAxis.TickValues = ax.XAxis.Limits(1):100:ax.XAxis.Limits(2);
% ax.YAxis.TickValues = ax.YAxis.Limits(1):2e10:ax.YAxis.Limits(2);
% ax.XAxis.MinorTick = 'on';
% ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):50:ax.XAxis.Limits(2);
% ax.YAxis.MinorTick = 'on';
% ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):1e10:ax.YAxis.Limits(2);+

%% APLICACIÓN DEL FILTRO - EQUIRIPPLE HP - VARIANZA - SEÑAL
% Filter data
FACTOR_DECIMATE = 1;
FFT_TAMANHO = fft_size;


disp('INFO: Filtering with default configuration...');
firEquiripple = fir_compiler_v7_2_bitacc('coeff',kaiserHP,'coeff_width',16,'coeff_fract_width',15,'data_width',16,'data_fract_width',14,'reloadable',1,'quantization',1,'PersistentMemory',true);
fvtool(kaiserHP);
configEquirippleC = get_configuration(firEquiripple);
fr_filterE       = fft(configEquirippleC.coeff,FFT_TAMANHO);
fr_filter_quantE = fft(filter(firEquiripple,[1,zeros(1,size(kaiserHP,2))]),FFT_TAMANHO);
% firEquiripple = fir_compiler_v7_2_bitacc('coeff',equirippleC,'coeff_width',16,'coeff_fract_width',15,'data_width',16,'data_fract_width',14,'reloadable',1,'quantization',1,'PersistentMemory',true);
% fvtool(equirippleC);
% configEquirippleC = get_configuration(firEquiripple);
% fr_filterE       = fft(configEquirippleC.coeff,FFT_TAMANHO);
% fr_filter_quantE = fft(filter(firEquiripple,[1,zeros(1,size(equirippleC,2))]),FFT_TAMANHO);

Y_decimate = data_out2;
figure;plot(xVar,Y_decimate);
data_out_E = filter(firEquiripple,Y_decimate);
figure;plot(xVar,data_out_E,'g');



Y_decimate = decimate(data_out2,2);

figure;plot(decimate(xVar,2),Y_decimate);

data_out_E = filter(firEquiripple,Y_decimate);

Y_interp = interp(data_out_E,64);
% xVar3 = decimate(xVar,FACTOR_DECIMATE);

% Comparamos data_in y data_out
figure; hold on;
box on;
plot(xVar,Y_interp,'b');
plot(decimate(xVar,2),data_out_E,'r');
xlabel('D [s]');
ylabel('Variance amplitude');
legend('data in','data out');
title('Señal de la varianza filtrada con kaiser (aprox. filtro medias)');

figure;plot(xVar,interp(data_out_E,2),'g');


vectorX = 0:20/(fft_size/2):20-20/(fft_size/2);
vectorX3 = vectorX;

% Plot normalized filter response, input data and output data
disp('INFO: Plot filter response, input data and output data');
% fr_filter_quant = fft(filter(fir3,[1,zeros(1,size(NumP,2))]),fft_size);
fr_data_in  = fft(data_out2.*window(window_name3,M/FACTOR_DECIMATE)',FFT_TAMANHO);
fr_data_out = fft(Y_interp.*window(window_name3,M/FACTOR_DECIMATE)',FFT_TAMANHO);
figure();hold on; grid off;
% plot(vectorX,20*log10(abs(fr_filter_quant(1:fft_size/2))./max(abs(fr_filter_quant))),'blue-','LineWidth',3);
plot(vectorX3,20*log10(abs(fr_filter_quantE(1:fft_size/FACTOR_DECIMATE/2))./max(abs(fr_filter_quantE))),'blue-','LineWidth',3);
plot(vectorX3,20*log10(abs(fr_data_in(1:fft_size/FACTOR_DECIMATE/2))./max(abs(fr_data_in))),'red-','LineWidth',3);
plot(vectorX3,20*log10(abs(fr_data_out(1:fft_size/FACTOR_DECIMATE/2))./max(abs(fr_data_out))),'black-','LineWidth',3);
line([1/15 1/15], [-140 10], 'LineWidth',3, 'Color','cyan');
% xlabel('Frequency (Normalized to window size/2 --> 0 to 4096 (Fs=215 Hz//B=107Hz==0.05mm))');
xlabel('Spatial Frequency (Fs=215 Hz//B=107Hz==0.05mm))');
ylabel('[dB]');
legend(['Quantized Coefficients: Fix',num2str(configEquirippleC.coeff_width),'-frac',num2str(configEquirippleC.coeff_fract_width),' bits'],'Data in','Data out');
title('Filter frequency response-kaiser');
ax = gca;
box on;
set(ax,'FontSize',40);
ax.LineWidth = 3;
set(ax,'TickLength',[0.02, 0.02]);

ax.XAxis.Limits(1) = 0; ax.XAxis.Limits(2) = max(vectorX3);
ax.YAxis.Limits(1) = -140; ax.YAxis.Limits(2) = 10;
ax.XAxis.TickValues = ax.XAxis.Limits(1):1:ax.XAxis.Limits(2);
ax.YAxis.TickValues = ax.YAxis.Limits(1):25:ax.YAxis.Limits(2);
ax.XAxis.MinorTick = 'on';
ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):0.5:ax.XAxis.Limits(2);
ax.YAxis.MinorTick = 'on';
ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):12.5:ax.YAxis.Limits(2);


%% APLICACIÓN DEL FILTRO - KAISER LP - VARIANZA - SEÑAL
% Filter data
disp('INFO: Filtering with default configuration...');
firKaiser = fir_compiler_v7_2_bitacc('coeff',kaiserC,'coeff_width',16,'coeff_fract_width',15,'data_width',16,'data_fract_width',14,'reloadable',1,'quantization',1,'PersistentMemory',true);
fvtool(kaiserC);
configKaiserC = get_configuration(firKaiser);
fr_filterK       = fft(configKaiserC.coeff,fft_size);
fr_filter_quantK = fft(filter(firKaiser,[1,zeros(1,size(kaiserC,2))]),fft_size);


%seno de 3 frecuencias
% GAR2 = 1e10.*(sin()+sin()+sin());
% t = xVar;
% y_in = sin(2*pi*(1/0.05).*t) + sin(2*pi*(1/0.08).*t) + sin(2*pi*(1/0.1).*t);
% figure;plot(xVar,GAR);

data_out2 = filter(firKaiser,GAR);

% Comparamos data_in y data_out
figure; hold on;
box on;
plot(xVar,GAR,'b');
plot(xVar,data_out2,'r');
xlabel('D [s]');
ylabel('Variance amplitude');
legend('data in','data out');
title('Señal de la varianza filtrada con kaiser (aprox. filtro medias)');

vectorX = 0:20/(fft_size/2):20-20/(fft_size/2);

% Plot normalized filter response, input data and output data
disp('INFO: Plot filter response, input data and output data');
% fr_filter_quant = fft(filter(fir3,[1,zeros(1,size(NumP,2))]),fft_size);
fr_data_in  = fft(GAR.*window(window_name2,M)',fft_size);
fr_data_out = fft(data_out2.*window(window_name2,M)',fft_size);
figure();hold on; grid off;
% plot(vectorX,20*log10(abs(fr_filter_quant(1:fft_size/2))./max(abs(fr_filter_quant))),'blue-','LineWidth',3);
plot(vectorX,20*log10(abs(fr_filter_quantK(1:fft_size/2))./max(abs(fr_filter_quantK))),'blue-','LineWidth',3);
plot(vectorX,20*log10(abs(fr_data_in(1:fft_size/2))./max(abs(fr_data_in))),'red-','LineWidth',3);
plot(vectorX,20*log10(abs(fr_data_out(1:fft_size/2))./max(abs(fr_data_out))),'black-','LineWidth',3);
line([1/15 1/15], [-140 10], 'LineWidth',3, 'Color','cyan');
% xlabel('Frequency (Normalized to window size/2 --> 0 to 4096 (Fs=215 Hz//B=107Hz==0.05mm))');
xlabel('Spatial Frequency (Fs=215 Hz//B=107Hz==0.05mm))');
ylabel('[dB]');
legend(['Quantized Coefficients: Fix',num2str(configKaiserC.coeff_width),'-frac',num2str(configKaiserC.coeff_fract_width),' bits'],'Data in','Data out');
title('Filter frequency response-kaiser');
ax = gca;
box on;
set(ax,'FontSize',40);
ax.LineWidth = 3;
set(ax,'TickLength',[0.02, 0.02]);

ax.XAxis.Limits(1) = 0; ax.XAxis.Limits(2) = max(vectorX);
ax.YAxis.Limits(1) = -140; ax.YAxis.Limits(2) = 10;
ax.XAxis.TickValues = ax.XAxis.Limits(1):1:ax.XAxis.Limits(2);
ax.YAxis.TickValues = ax.YAxis.Limits(1):25:ax.YAxis.Limits(2);
ax.XAxis.MinorTick = 'on';
ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):0.5:ax.XAxis.Limits(2);
ax.YAxis.MinorTick = 'on';
ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):12.5:ax.YAxis.Limits(2);


% ax.XAxis.Limits(1) = 0; ax.XAxis.Limits(2) = 4096;
% ax.YAxis.Limits(1) = -140; ax.YAxis.Limits(2) = 10;
% ax.XAxis.TickValues = ax.XAxis.Limits(1):500:ax.XAxis.Limits(2);
% ax.YAxis.TickValues = ax.YAxis.Limits(1):25:ax.YAxis.Limits(2);
% ax.XAxis.MinorTick = 'on';
% ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):250:ax.XAxis.Limits(2);
% ax.YAxis.MinorTick = 'on';
% ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):12.5:ax.YAxis.Limits(2);



















%% Primer paso - limpiamos variables y definimos constantes
clearvars -except NumP TACTEL;
clc;
close all;

% Constants
fft_size     = 4096;
data_samples = 4096;
window_name  = @hamming;

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
plot(0:20/2048:20-20/2048,20*log10(abs(fr_filter(1:fft_size/2))./max(abs(fr_filter))),'Color',[0.1 0.4 0.6],'LineWidth',4);
hold on;
grid on;
plot(0:20/2048:20-20/2048,20*log10(abs(fr_filter_quant(1:fft_size/2))./max(abs(fr_filter_quant))),'LineStyle','--','Color',[0.1 0.9 0.1],'LineWidth',4);
legend('Source Coefficients',['Quantized Coefficients: Fix',num2str(config3.coeff_width),'-frac',num2str(config3.coeff_fract_width),' bits']);
xlabel('Hz (1/mm)');ylabel('Magnitude Filter Response (dB)');
% title(['Coefficient Quantization. Filter order: ',num2str(size(NumP,2))]);


%% Aplicamos el filtro a una señal dada como ejemplo
% Create an input data vector
% - Scaled to match the default models data format; Fix16_0
disp('INFO: Generate input data...');
data_in = 16e3.*(sin(0.5.*[1:1:data_samples])+sin(2.*[1:1:data_samples]));

% Pintamos los datos
figure();hold on; grid off;
plot([150:200],data_in(1,150:200),'blue-','LineWidth',3);
xlabel('Sample number');
ylabel('Amplitude');
title('Input data from sample 150 to sample 200');
ax = gca;
box on;
set(ax,'FontSize',40);
ax.LineWidth = 3;
set(ax,'TickLength',[0.02, 0.02]);
ax.XAxis.Limits(1) = 150; ax.XAxis.Limits(2) = 200;
ax.YAxis.Limits(1) = -40000; ax.YAxis.Limits(2) = 30000;
ax.XAxis.TickValues = ax.XAxis.Limits(1):10:ax.XAxis.Limits(2);
ax.YAxis.TickValues = ax.YAxis.Limits(1):10000:ax.YAxis.Limits(2);
ax.XAxis.MinorTick = 'on';
ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):5:ax.XAxis.Limits(2);
ax.YAxis.MinorTick = 'on';
ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):5000:ax.YAxis.Limits(2);


% Filter data
disp('INFO: Filtering with default configuration...');
data_out = filter(fir3,data_in);

% Plot normalized filter response, input data and output data
disp('INFO: Plot filter response, input data and output data');
% fr_filter_quant = fft(filter(fir3,[1,zeros(1,size(NumP,2))]),fft_size);
fr_data_in  = fft(data_in.*window(window_name,data_samples)',fft_size);
fr_data_out = fft(data_out.*window(window_name,data_samples)',fft_size);
figure();hold on; grid off;
plot(20*log10(abs(fr_filter_quant(1:fft_size/2))./max(abs(fr_filter_quant))),'blue-','LineWidth',3);
plot(20*log10(abs(fr_data_in(1:fft_size/2))./max(abs(fr_data_in))),'red-','LineWidth',3);
plot(20*log10(abs(fr_data_out(1:fft_size/2))./max(abs(fr_data_out))),'black--','LineWidth',3);
xlabel('Frequency (Normalized to window size/2 --> 0 to 2048)');
ylabel('[dB]');
legend(['Quantized Coefficients: Fix',num2str(config3.coeff_width),'-frac',num2str(config3.coeff_fract_width),' bits'],'Data in','Data out');
title('Filter frequency response');
ax = gca;
box on;
set(ax,'FontSize',40);
ax.LineWidth = 3;
set(ax,'TickLength',[0.02, 0.02]);
ax.XAxis.Limits(1) = 0; ax.XAxis.Limits(2) = 2048;
ax.YAxis.Limits(1) = -140; ax.YAxis.Limits(2) = 10;
ax.XAxis.TickValues = ax.XAxis.Limits(1):500:ax.XAxis.Limits(2);
ax.YAxis.TickValues = ax.YAxis.Limits(1):25:ax.YAxis.Limits(2);
ax.XAxis.MinorTick = 'on';
ax.XAxis.MinorTickValues = ax.XAxis.Limits(1):250:ax.XAxis.Limits(2);
ax.YAxis.MinorTick = 'on';
ax.YAxis.MinorTickValues = ax.YAxis.Limits(1):12.5:ax.YAxis.Limits(2);
% axis([0 2048 -140 1]);































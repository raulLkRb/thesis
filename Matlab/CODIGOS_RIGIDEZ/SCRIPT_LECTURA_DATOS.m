%% SCRIPT PARA LEER DATOS DE OBJETOS -- RIGIDEZ
close all;
clear all;
clc;

%% Intento de lectura de ficheros .txt
dirFiles = 'D:\DOCUMENTOS\RIGIDEZ_AMPLIADO_DESPLAZAMIENTO\FILES';

%% Creamos cell array con 43 celdas
dataRigidez = cell(43,1);

%% Cambiamos comas por puntos en todos los archivos
comma2point_overwrite('despAguacate.txt');
comma2point_overwrite('despBerenjena.txt');
comma2point_overwrite('despCiruela.txt');
comma2point_overwrite('despCuboSINO.txt');
comma2point_overwrite('despCuboVertical.txt');
comma2point_overwrite('despEsferaMoradita.txt');
% comma2point_overwrite('despEsferaVerdeBlanda.txt');
comma2point_overwrite('despEsferaVerdeDura.txt');
comma2point_overwrite('despGelHidroalcoholico.txt');
comma2point_overwrite('despKiwi.txt');
comma2point_overwrite('despLechuga.txt');
comma2point_overwrite('despLimonMaduro.txt');
comma2point_overwrite('despLimonVerde.txt');
comma2point_overwrite('despMandarina.txt');
comma2point_overwrite('despMandarinaPeq.txt');
comma2point_overwrite('despNectarinaPodrida.txt');
comma2point_overwrite('despOvoideAzulAbajo.txt');
comma2point_overwrite('despOvoideAzulArriba.txt');
comma2point_overwrite('despOvoideAzulHorizontal.txt');
comma2point_overwrite('despOvoideMoradoAbajo.txt');
comma2point_overwrite('despOvoideMoradoArriba.txt');
comma2point_overwrite('despOvoideMoradoHorizontal.txt');
comma2point_overwrite('despOvoideNaranjaAbajo.txt');
comma2point_overwrite('despOvoideNaranjaArriba.txt');
comma2point_overwrite('despOvoideNaranjaHorizontal.txt');
comma2point_overwrite('despOvoideVerdeAbajo.txt');
comma2point_overwrite('despOvoideVerdeHaciaArriba.txt');
comma2point_overwrite('despOvoideVerdeHorizontal.txt');
comma2point_overwrite('despPatata.txt');
comma2point_overwrite('despPelotaPadel.txt');
comma2point_overwrite('despPera.txt');
comma2point_overwrite('despPiramideAbajo.txt');
comma2point_overwrite('despPiramideArriba.txt');
comma2point_overwrite('despPlatano.txt');
comma2point_overwrite('despPlatanoMaduro.txt');
% comma2point_overwrite('despPlatanoPodrido.txt');
comma2point_overwrite('despTomate.txt');
comma2point_overwrite('despToroideHorizontal.txt');
comma2point_overwrite('despToroideVertical.txt');
comma2point_overwrite('despTrianguloAbajo.txt');
comma2point_overwrite('despTrianguloArriba.txt');
comma2point_overwrite('despTrianguloHorizontal.txt');
comma2point_overwrite('despZanahoria.txt');

%% Leemos los datos
data_despAguacate = importdata('despAguacate.txt');
data_despBerenjena = importdata('despBerenjena.txt');
data_despCiruela = importdata('despCiruela.txt');
data_despCuboSINO = importdata('despCuboSINO.txt');
data_despCuboVertical = importdata('despCuboVertical.txt');
data_despEsferaMoradita = importdata('despEsferaMoradita.txt');
data_despEsferaVerdeBlanda = importdata('despEsferaVerdeBlanda.txt');
data_despEsferaVerdeDura = importdata('despEsferaVerdeDura.txt');
data_despGelHidroalcoholico = importdata('despGelHidroalcoholico.txt');
data_despKiwi = importdata('despKiwi.txt');
data_despLechuga = importdata('despLechuga.txt');
data_despLimonMaduro = importdata('despLimonMaduro.txt');
data_despLimonVerde = importdata('despLimonVerde.txt');
data_despMandarina = importdata('despMandarina.txt');
data_despMandarinaPeq = importdata('despMandarinaPeq.txt');
data_despNectarinaPodrida = importdata('despNectarinaPodrida.txt');
data_despOvoideAzulAbajo = importdata('despOvoideAzulAbajo.txt');
data_despOvoideAzulArriba = importdata('despOvoideAzulArriba.txt');
data_despOvoideAzulHorizontal = importdata('despOvoideAzulHorizontal.txt');
data_despOvoideMoradoAbajo = importdata('despOvoideMoradoAbajo.txt');
data_despOvoideMoradoArriba = importdata('despOvoideMoradoArriba.txt');
data_despOvoideMoradoHorizontal = importdata('despOvoideMoradoHorizontal.txt');
data_despOvoideNaranjaAbajo = importdata('despOvoideNaranjaAbajo.txt');
data_despOvoideNaranjaArriba = importdata('despOvoideNaranjaArriba.txt');
data_despOvoideNaranjaHorizontal = importdata('despOvoideNaranjaHorizontal.txt');
data_despOvoideVerdeAbajo = importdata('despOvoideVerdeAbajo.txt');
data_despOvoideVerdeHaciaArriba = importdata('despOvoideVerdeHaciaArriba.txt');
data_despOvoideVerdeHorizontal = importdata('despOvoideVerdeHorizontal.txt');
data_despPatata = importdata('despPatata.txt');
data_despPelotaPadel = importdata('despPelotaPadel.txt');
data_despPera = importdata('despPera.txt');
data_despPiramideAbajo = importdata('despPiramideAbajo.txt');
data_despPiramideArriba = importdata('despPiramideArriba.txt');
data_despPlatano = importdata('despPlatano.txt');
data_despPlatanoMaduro = importdata('despPlatanoMaduro.txt');
% data_despPlatanoPodrido = importdata('despPlatanoPodrido.txt');
load('data_despPlatanoPodrido.mat');
data_despTomate = importdata('despTomate.txt');
data_despToroideHorizontal = importdata('despToroideHorizontal.txt');
data_despToroideVertical = importdata('despToroideVertical.txt');
data_despTrianguloAbajo = importdata('despTrianguloAbajo.txt');
data_despTrianguloArriba = importdata('despTrianguloArriba.txt');
data_despTrianguloHorizontal = importdata('despTrianguloHorizontal.txt');
data_despZanahoria = importdata('despZanahoria.txt');

%% Asignamos los datos al cell array
dataRigidez{1,1} = data_despAguacate;
dataRigidez{2,1} = data_despBerenjena;
dataRigidez{3,1} = data_despCiruela;
dataRigidez{4,1} = data_despCuboSINO;
dataRigidez{5,1} = data_despCuboVertical;
dataRigidez{6,1} = data_despEsferaMoradita;
% dataRigidez{7,1} = data_despEsferaVerdeBlanda;
dataRigidez{7,1} = data_despEsferaVerdeDura(1:8,:);
dataRigidez{8,1} = data_despEsferaVerdeDura;
dataRigidez{9,1} = data_despGelHidroalcoholico;
dataRigidez{10,1} = data_despKiwi;
dataRigidez{11,1} = data_despLechuga;
dataRigidez{12,1} = data_despLimonMaduro;
dataRigidez{13,1} = data_despLimonVerde;
dataRigidez{14,1} = data_despMandarina;
dataRigidez{15,1} = data_despMandarinaPeq;
dataRigidez{16,1} = data_despNectarinaPodrida;
dataRigidez{17,1} = data_despOvoideAzulAbajo;
dataRigidez{18,1} = data_despOvoideAzulArriba;
dataRigidez{19,1} = data_despOvoideAzulHorizontal;
dataRigidez{20,1} = data_despOvoideMoradoAbajo;
dataRigidez{21,1} = data_despOvoideMoradoArriba;
dataRigidez{22,1} = data_despOvoideMoradoHorizontal;
dataRigidez{23,1} = data_despOvoideNaranjaAbajo;
dataRigidez{24,1} = data_despOvoideNaranjaArriba;
dataRigidez{25,1} = data_despOvoideNaranjaHorizontal;
dataRigidez{26,1} = data_despOvoideVerdeAbajo;
dataRigidez{27,1} = data_despOvoideVerdeHaciaArriba;
dataRigidez{28,1} = data_despOvoideVerdeHorizontal;
dataRigidez{29,1} = data_despPatata;
dataRigidez{30,1} = data_despPelotaPadel;
dataRigidez{31,1} = data_despPera;
dataRigidez{32,1} = data_despPiramideAbajo;
dataRigidez{33,1} = data_despPiramideArriba;
dataRigidez{34,1} = data_despPlatano;
dataRigidez{35,1} = data_despPlatanoMaduro;
dataRigidez{36,1} = data_despPlatanoPodrido;
dataRigidez{37,1} = data_despTomate;
dataRigidez{38,1} = data_despToroideHorizontal;
dataRigidez{39,1} = data_despToroideVertical;
dataRigidez{40,1} = data_despTrianguloAbajo;
dataRigidez{41,1} = data_despTrianguloArriba;
dataRigidez{42,1} = data_despTrianguloHorizontal;
dataRigidez{43,1} = data_despZanahoria;

%% Creamos ahora otro cell array para guardar los mommentos DEDO2-PALMA
dataRigidezPALMA = cell(43,1); indicePALMA = cell(43,1);
dataRigidezDEDO2 = cell(43,1); indiceDEDO2 = cell(43,1);
dataRigidezMomentosPalma = cell(43,1); indiceMomPALMA = cell(43,1);
dataRigidezMomentosDedo2 = cell(43,1); indiceMomDEDO2 = cell(43,1);

%% Recorremos cada cell array dataRigidez y guardamos datos en dataRigidezPALMA, dataRigidezDEDO2, dataRigidezMomentosPalma y dataRigidezMomentosDedo2
for ind = 1:43
    MAT_AUX = dataRigidez{ind,1};
    filaMatAux = size(MAT_AUX,1);
    colMatAux = size(MAT_AUX,2);
    for fil = 1:filaMatAux
        if(fil == 1 || mod(fil-1,33) == 0)            
            indicePALMA{ind,1} = [indicePALMA{ind,1}; [fil:fil+4]'];
        elseif(fil == 25 || mod(fil+8,33) == 0)  
            indiceDEDO2{ind,1} = [indiceDEDO2{ind,1}; [fil:fil+4]'];
        elseif(fil == 8 || mod(fil+25,33) == 0)
            indiceMomPALMA{ind,1} = [indiceMomPALMA{ind,1}; fil];
        elseif(fil == 32 || mod(fil+1,33) == 0)
            indiceMomDEDO2{ind,1} = [indiceMomDEDO2{ind,1}; fil];
        end
    end
    ind
end

%% Ahora para estos indices guardamos los cell array correspondientes de cada matriz y momentos
for ind = 1:43    
    MAT_AUX = dataRigidez{ind,1};
    dataRigidezPALMA{ind,1} = [dataRigidezPALMA{ind,1}; MAT_AUX(indicePALMA{ind,1},1:8)];
    dataRigidezDEDO2{ind,1} = [dataRigidezDEDO2{ind,1}; MAT_AUX(indiceDEDO2{ind,1},1:11)];
%     dataRigidezMomentosPalma{ind,1} = [dataRigidezMomentosPalma{ind,1}; MAT_AUX(indiceMomPALMA{ind,1},2:7)];
%     dataRigidezMomentosDedo2{ind,1} = [dataRigidezMomentosDedo2{ind,1}; MAT_AUX(indiceMomDEDO2{ind,1},2:7)];
end

%% Ponemos a 0 en todas las clases el tactel "fantasma" en el DEDO (en la palma no hay problema)
MATRIZ_AUX = [];
for ind = 1:43
    MATRIZ_AUX = dataRigidezDEDO2{ind,1};
    col_fantasma = 4;
    for row_fantasma = 4:5:size(MATRIZ_AUX,1)
        MATRIZ_AUX(row_fantasma,col_fantasma) = 0;
    end
    dataRigidezDEDO2{ind,1} = MATRIZ_AUX;
end

%% Creamos el mismo filtro que usaba para las texturas
close all; % --> el filtro es el NumP6 de 32 taps
data_size = 1705;
% coeff3 = [-0.00160508007022833,0.00522186023233905,-0.0128938558190416,0.0270558665063787,-0.0517786514021947,0.0961128947776271,-0.192039756634339,0.629641625260593,0.629641625260593,-0.192039756634339,0.0961128947776271,-0.0517786514021947,0.0270558665063787,-0.0128938558190416,0.00522186023233905,-0.00160508007022833];
load('Hd.mat');
load('fir3.mat');
% load('coeff3.mat');
coeff3 = Hd.Numerator;
fir3 = fir_compiler_v7_2_bitacc('coeff',coeff3,'coeff_width',16,'coeff_fract_width',15,'data_width',16,'data_fract_width',14,'reloadable',1,'quantization',1);%,'PersistentMemory',true);
% fvtool(coeff3);

fr_filter       = fft(coeff3,data_size);
fr_filter_quant = fft(filter(fir3,[1,zeros(1,size(coeff3,2))]),data_size);

%% Group Delay del filtro
grupoDelay = grpdelay(Hd);
grpDel = round(grupoDelay(1,1));

save('fir3.mat','fir3');
save('grpDel.mat','grpDel');

% %% Aplicamos filtro
% data_size = 1705;
% data_in = objDedo43{17,1}(:,1)';
% data_out = filter(fir3,data_in);
% 
% data_in = data_in(1,1:data_size);
% data_out = data_out(1,1:data_size);
% 
% xx_scale = 0:1/(data_size/2):1-1/(data_size/2);
% 
% fr_data_in  = fft(data_in.*window(window_name,data_size)',data_size);
% fr_data_out = fft(data_out.*window(window_name,data_size)',data_size);
% figure();box on; hold on; grid on;
% plot(xx_scale,20*log10(abs(fr_filter_quant(1:data_size/2))./max(abs(fr_filter_quant))),'blue-','LineWidth',3);
% plot(xx_scale,20*log10(abs(fr_data_in(1:data_size/2))./max(abs(fr_data_in))),'red-','LineWidth',3);
% plot(xx_scale,20*log10(abs(fr_data_out(1:data_size/2))./max(abs(fr_data_out))),'black--','LineWidth',3);
% ylabel('[dB]');
% xlabel('Freq-Spectrum-Normalized Scale 0 to 1');
% legend('Quantized-Filter','DataIn-Spectrum','DataOut-Spectrum');
% 
% %% Representamos en el tiempo
% figure;hold on;box on;grid on;
% plot(data_in,'b','LineWidth',3);
% groupDelay = grpdelay(Hd);  % Mirar este parámetro en la pestaña 'Analysis' --> Phase Delay
% plot(data_out(1,round(groupDelay(1,1)):end),'r','LineWidth',3);

%% Calculamos los momentos del DEDO y de la PALMA (ya con el tactel "fantasma" quitado --> sólo para el dedo)
% ¡¡¡FALTARÍA METER UN FILTRO PARA QUITAR "LOS PICOS" A momentosDEDO y momentosPALMA!!!
momentosDEDO = cell(43,1);
momentosPALMA = cell(43,1);
for i = 1:43
% for i = 27:27
    % DEDO
    MATRIZ_AUXILIAR_DEDO = dataRigidezDEDO2{i,1};
    for k = 1:5:size(MATRIZ_AUXILIAR_DEDO,1)
        [M00d, M10d, M01d, M20d, M11d, M02d] = computeMomentum(MATRIZ_AUXILIAR_DEDO(k:k+4,:));
        momentosDEDO{i,1} = [momentosDEDO{i,1}; M00d, M10d, M01d, M20d, M11d, M02d];
    end
    % PALMA
    MATRIZ_AUXILIAR_PALMA = dataRigidezPALMA{i,1};
    for k = 1:5:size(MATRIZ_AUXILIAR_PALMA,1)
        [M00p, M10p, M01p, M20p, M11p, M02p] = computeMomentum(MATRIZ_AUXILIAR_PALMA(k:k+4,:));
        momentosPALMA{i,1} = [momentosPALMA{i,1}; M00p, M10p, M01p, M20p, M11p, M02p];
    end
    i
end

%% Salvamos los cell array correspondientes
% INDICES
save('indicePALMA.mat','indicePALMA');
save('indiceDEDO2.mat','indiceDEDO2');
save('indiceMomPALMA.mat','indiceMomPALMA');
save('indiceMomDEDO2.mat','indiceMomDEDO2');

% MATRICES
save('dataRigidezPALMA.mat','dataRigidezPALMA');
save('dataRigidezDEDO2.mat','dataRigidezDEDO2');
save('dataRigidezMomentosPalma.mat','dataRigidezMomentosPalma');
save('dataRigidezMomentosDedo2.mat','dataRigidezMomentosDedo2');

% GUARDAMOS MOMENTOS CALCULADOS DE NUEVO CON EL DEDO Y CON LA PALMA
save('momentosDEDO.mat','momentosDEDO');
save('momentosPALMA.mat','momentosPALMA');



%% Momentos 50 iteraciones, rigidez, para la PALMA
% OBJETO 1 (aguacate)
M00 = filter(fir3,momentosPALMA{1,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{1,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{1,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{1,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{1,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{1,1}(:,6)')';
[objPalma1,indMomObjPalma1,indMaxObjPalma1] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{1,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{1,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{1,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{1,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{1,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{1,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma1');
%%%%%%%%%%%%%%%%%%%%%%%% SOLO PARA EL OBJETO DEDO 1%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
umbralHaciaAtras = 1700;
for ii = 1:size(objPalma1)
    vAux = objPalma1{ii,1};
    tam = size(vAux,1);  
    if(tam > umbralHaciaAtras)
        vNuevo = vAux(tam-umbralHaciaAtras:tam,:);
        objPalma1{ii,1} = vNuevo;
    end
    vNuevo = [];
    vAux = [];
end


% OBJETO 2 (berenjena)
M00 = filter(fir3,momentosPALMA{2,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{2,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{2,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{2,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{2,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{2,1}(:,6)')';
[objPalma2,indMomObjPalma2,indMaxObjPalma2] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{2,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{2,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{2,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{2,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{2,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{2,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma2');

% OBJETO 3 (ciruela)
M00 = filter(fir3,momentosPALMA{3,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{3,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{3,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{3,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{3,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{3,1}(:,6)')';
[objPalma3,indMomObjPalma3,indMaxObjPalma3] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{3,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{3,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{3,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{3,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{3,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{3,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma3');

% OBJETO 4 (cubo SINO)
M00 = filter(fir3,momentosPALMA{4,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{4,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{4,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{4,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{4,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{4,1}(:,6)')';
[objPalma4,indMomObjPalma4,indMaxObjPalma4] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{4,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{4,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{4,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{4,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{4,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{4,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma4');

% OBJETO 5 (cubo vertical)
M00 = filter(fir3,momentosPALMA{5,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{5,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{5,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{5,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{5,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{5,1}(:,6)')';
[objPalma5,indMomObjPalma5,indMaxObjPalma5] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{5,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{5,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{5,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{5,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{5,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{5,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma5');

% OBJETO 6 (esfera moradita)
M00 = filter(fir3,momentosPALMA{6,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{6,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{6,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{6,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{6,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{6,1}(:,6)')';
[objPalma6,indMomObjPalma6,indMaxObjPalma6] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{6,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{6,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{6,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{6,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{6,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{6,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma6');

% OBJETO 7 (esfera verde blanda) --> Incidencia: apenas hay datos.... en la palma salen unas mas anchas que otras...
M00 = filter(fir3,momentosPALMA{7,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{7,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{7,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{7,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{7,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{7,1}(:,6)')';
[objPalma7,indMomObjPalma7,indMaxObjPalma7] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{7,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{7,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{7,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{7,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{7,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{7,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma7');

% OBJETO 8 (esfera verde dura)
M00 = filter(fir3,momentosPALMA{8,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{8,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{8,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{8,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{8,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{8,1}(:,6)')';
[objPalma8,indMomObjPalma8,indMaxObjPalma8] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{8,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{8,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{8,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{8,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{8,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{8,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma8');

% OBJETO 9 (gel hidroalcoholico) --> incidencia: salen muchos "picotazos"
M00 = filter(fir3,momentosPALMA{9,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{9,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{9,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{9,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{9,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{9,1}(:,6)')';
[objPalma9,indMomObjPalma9,indMaxObjPalma9] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{9,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{9,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{9,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{9,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{9,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{9,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma9');

% OBJETO 10 (kiwi)
M00 = filter(fir3,momentosPALMA{10,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{10,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{10,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{10,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{10,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{10,1}(:,6)')';
[objPalma10,indMomObjPalma10,indMaxObjPalma10] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{10,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{10,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{10,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{10,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{10,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{10,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma10');

% OBJETO 11 (lechuga)
M00 = filter(fir3,momentosPALMA{11,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{11,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{11,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{11,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{11,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{11,1}(:,6)')';
[objPalma11,indMomObjPalma11,indMaxObjPalma11] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{11,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{11,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{11,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{11,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{11,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{11,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma11');

% OBJETO 12 (limon manduro)
M00 = filter(fir3,momentosPALMA{12,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{12,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{12,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{12,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{12,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{12,1}(:,6)')';
[objPalma12,indMomObjPalma12,indMaxObjPalma12] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.7e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{12,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{12,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{12,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{12,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{12,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{12,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma12');

% OBJETO 13 (limon verde)
M00 = filter(fir3,momentosPALMA{13,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{13,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{13,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{13,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{13,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{13,1}(:,6)')';
[objPalma13,indMomObjPalma13,indMaxObjPalma13] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.4e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{13,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{13,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{13,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{13,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{13,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{13,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma13');

% OBJETO 14 (mandarina (blanda))
M00 = filter(fir3,momentosPALMA{14,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{14,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{14,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{14,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{14,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{14,1}(:,6)')';
[objPalma14,indMomObjPalma14,indMaxObjPalma14] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{14,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{14,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{14,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{14,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{14,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{14,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma14');

% OBJETO 15 (mandarina pequeña)
M00 = filter(fir3,momentosPALMA{15,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{15,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{15,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{15,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{15,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{15,1}(:,6)')';
[objPalma15,indMomObjPalma15,indMaxObjPalma15] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{15,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{15,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{15,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{15,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{15,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{15,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma15');

% OBJETO 16 (nectarina podrida)
M00 = filter(fir3,momentosPALMA{16,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{16,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{16,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{16,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{16,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{16,1}(:,6)')';
[objPalma16,indMomObjPalma16,indMaxObjPalma16] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{16,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{16,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{16,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{16,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{16,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{16,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma16');

% OBJETO 17 (ovoide azul abajo)
M00 = filter(fir3,momentosPALMA{17,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{17,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{17,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{17,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{17,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{17,1}(:,6)')';
[objPalma17,indMomObjPalma17,indMaxObjPalma17] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{17,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{17,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{17,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{17,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{17,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{17,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma17');

% OBJETO 18 (ovoide azul arriba)
M00 = filter(fir3,momentosPALMA{18,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{18,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{18,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{18,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{18,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{18,1}(:,6)')';
[objPalma18,indMomObjPalma18,indMaxObjPalma18] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.7e5);
[minim,promine] = islocalmin(M00);
figure;plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{18,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{18,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{18,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{18,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{18,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{18,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma18');

% OBJETO 19 (ovoide azul horizontal)
M00 = filter(fir3,momentosPALMA{19,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{19,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{19,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{19,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{19,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{19,1}(:,6)')';
[objPalma19,indMomObjPalma19,indMaxObjPalma19] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{19,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{19,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{19,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{19,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{19,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{19,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma19');

% OBJETO 20 (ovoide morado abajo)
M00 = filter(fir3,momentosPALMA{20,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{20,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{20,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{20,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{20,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{20,1}(:,6)')';
[objPalma20,indMomObjPalma20,indMaxObjPalma20] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1.9e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{20,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{20,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{20,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{20,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{20,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{20,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma20');

% OBJETO 21 (ovoide morado arriba)
M00 = filter(fir3,momentosPALMA{21,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{21,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{21,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{21,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{21,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{21,1}(:,6)')';
[objPalma21,indMomObjPalma21,indMaxObjPalma21] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{21,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{21,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{21,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{21,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{21,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{21,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma21');

% OBJETO 22 (ovoide morado horizontal)
M00 = filter(fir3,momentosPALMA{22,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{22,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{22,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{22,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{22,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{22,1}(:,6)')';
[objPalma22,indMomObjPalma22,indMaxObjPalma22] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{22,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{22,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{22,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{22,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{22,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{22,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma22');

% OBJETO 23 (ovoide naranja abajo)  --> Incidencia: no hay 51, hay unos 39
M00 = filter(fir3,momentosPALMA{23,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{23,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{23,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{23,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{23,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{23,1}(:,6)')';
[objPalma23,indMomObjPalma23,indMaxObjPalma23] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.8e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{23,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{23,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{23,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{23,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{23,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{23,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma23');

% OBJETO 24 (ovoide naranja arriba)
M00 = filter(fir3,momentosPALMA{24,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{24,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{24,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{24,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{24,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{24,1}(:,6)')';
[objPalma24,indMomObjPalma24,indMaxObjPalma24] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{24,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{24,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{24,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{24,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{24,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{24,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma24');

% OBJETO 25 (ovoide naranja horizontal)
M00 = filter(fir3,momentosPALMA{25,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{25,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{25,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{25,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{25,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{25,1}(:,6)')';
[objPalma25,indMomObjPalma25,indMaxObjPalma25] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{25,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{25,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{25,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{25,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{25,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{25,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma25');

% OBJETO 26 (ovoide verde abajo)
M00 = filter(fir3,momentosPALMA{26,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{26,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{26,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{26,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{26,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{26,1}(:,6)')';
[objPalma26,indMomObjPalma26,indMaxObjPalma26] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.75e5);
[minim,promine] = islocalmin(M00);
figure;plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{26,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{26,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{26,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{26,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{26,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{26,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma26');

% OBJETO 27 (ovoide verde arriba) --> incidencia: mucho ruido
M00 = filter(fir3,momentosPALMA{27,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{27,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{27,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{27,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{27,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{27,1}(:,6)')';
[objPalma27,indMomObjPalma27,indMaxObjPalma27] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.59e5);
[minim,promine] = islocalmin(M00);
figure;plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{27,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{27,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{27,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{27,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{27,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{27,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma27');

% OBJETO 28 (ovoide verde horizontal)
M00 = filter(fir3,momentosPALMA{28,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{28,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{28,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{28,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{28,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{28,1}(:,6)')';
[objPalma28,indMomObjPalma28,indMaxObjPalma28] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{28,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{28,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{28,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{28,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{28,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{28,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma28');

% OBJETO 29 (patata)
M00 = filter(fir3,momentosPALMA{29,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{29,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{29,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{29,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{29,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{29,1}(:,6)')';
[objPalma29,indMomObjPalma29,indMaxObjPalma29] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{29,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{29,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{29,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{29,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{29,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{29,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma29');

% OBJETO 30 (pelota padel)
M00 = filter(fir3,momentosPALMA{30,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{30,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{30,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{30,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{30,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{30,1}(:,6)')';
[objPalma30,indMomObjPalma30,indMaxObjPalma30] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{30,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{30,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{30,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{30,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{30,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{30,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma30');

% OBJETO 31 (pera)
M00 = filter(fir3,momentosPALMA{31,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{31,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{31,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{31,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{31,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{31,1}(:,6)')';
[objPalma31,indMomObjPalma31,indMaxObjPalma31] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1.5e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{31,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{31,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{31,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{31,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{31,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{31,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma31');

% OBJETO 32 (piramide abajo)
M00 = filter(fir3,momentosPALMA{32,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{32,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{32,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{32,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{32,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{32,1}(:,6)')';
[objPalma32,indMomObjPalma32,indMaxObjPalma32] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{32,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{32,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{32,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{32,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{32,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{32,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma32');

% OBJETO 33 (piramide arriba)
M00 = filter(fir3,momentosPALMA{33,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{33,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{33,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{33,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{33,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{33,1}(:,6)')';
[objPalma33,indMomObjPalma33,indMaxObjPalma33] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{33,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{33,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{33,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{33,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{33,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{33,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma33');

% OBJETO 34 (platano)
M00 = filter(fir3,momentosPALMA{34,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{34,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{34,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{34,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{34,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{34,1}(:,6)')';
[objPalma34,indMomObjPalma34,indMaxObjPalma34] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{34,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{34,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{34,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{34,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{34,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{34,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma34');

% OBJETO 35 (platano maduro)
M00 = filter(fir3,momentosPALMA{35,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{35,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{35,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{35,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{35,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{35,1}(:,6)')';
[objPalma35,indMomObjPalma35,indMaxObjPalma35] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{35,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{35,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{35,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{35,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{35,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{35,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma35');

% OBJETO 36 (platano podrido) -- incidencia: sale raro las graficas de abajo...
M00 = filter(fir3,momentosPALMA{36,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{36,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{36,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{36,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{36,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{36,1}(:,6)')';
[objPalma36,indMomObjPalma36,indMaxObjPalma36] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e5);
[minim,promine] = islocalmin(M00);
figure;plot(promine);
figure;hold on;box on;grid on;
subplot(2,3,1);hold on;box on;grid on;
plot(momentosPALMA{36,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
subplot(2,3,2);hold on;box on;grid on;
plot(momentosPALMA{36,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
subplot(2,3,3);hold on;box on;grid on;
plot(momentosPALMA{36,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
subplot(2,3,4);hold on;box on;grid on;
plot(momentosPALMA{36,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
subplot(2,3,5);hold on;box on;grid on;
plot(momentosPALMA{36,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
subplot(2,3,6);hold on;box on;grid on;
plot(momentosPALMA{36,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
sgtitle('objPalma36');

% OBJETO 37 (tomate)
M00 = filter(fir3,momentosPALMA{37,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{37,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{37,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{37,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{37,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{37,1}(:,6)')';
[objPalma37,indMomObjPalma37,indMaxObjPalma37] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{37,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{37,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{37,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{37,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{37,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{37,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma37');

% OBJETO 38 (toride horizontal)
M00 = filter(fir3,momentosPALMA{38,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{38,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{38,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{38,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{38,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{38,1}(:,6)')';
[objPalma38,indMomObjPalma38,indMaxObjPalma38] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{38,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{38,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{38,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{38,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{38,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{38,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma38');

% OBJETO 39 (toroide vertical)
M00 = filter(fir3,momentosPALMA{39,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{39,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{39,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{39,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{39,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{39,1}(:,6)')';
[objPalma39,indMomObjPalma39,indMaxObjPalma39] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.2e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{39,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{39,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{39,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{39,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{39,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{39,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma39');

% OBJETO 40 (triangulo abajo)
M00 = filter(fir3,momentosPALMA{40,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{40,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{40,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{40,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{40,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{40,1}(:,6)')';
[objPalma40,indMomObjPalma40,indMaxObjPalma40] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{40,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{40,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{40,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{40,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{40,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{40,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma40');

% OBJETO 41 (triangulo arriba)
M00 = filter(fir3,momentosPALMA{41,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{41,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{41,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{41,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{41,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{41,1}(:,6)')';
[objPalma41,indMomObjPalma41,indMaxObjPalma41] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{41,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{41,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{41,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{41,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{41,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{41,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma41');

% OBJETO 42 (triangulo horizontal)
M00 = filter(fir3,momentosPALMA{42,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{42,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{42,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{42,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{42,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{42,1}(:,6)')';
[objPalma42,indMomObjPalma42,indMaxObjPalma42] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{42,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{42,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{42,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{42,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{42,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{42,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma42');

% OBJETO 43 (zanahoria)
M00 = filter(fir3,momentosPALMA{43,1}(:,1)')';
M10 = filter(fir3,momentosPALMA{43,1}(:,2)')';
M01 = filter(fir3,momentosPALMA{43,1}(:,3)')';
M20 = filter(fir3,momentosPALMA{43,1}(:,4)')';
M11 = filter(fir3,momentosPALMA{43,1}(:,5)')';
M02 = filter(fir3,momentosPALMA{43,1}(:,6)')';
[objPalma43,indMomObjPalma43,indMaxObjPalma43] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosPALMA{43,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosPALMA{43,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosPALMA{43,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosPALMA{43,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosPALMA{43,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosPALMA{43,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objPalma43');

%% Momentos 50 iteraciones, rigidez, para el DEDO 2
% OBJETO 1 (aguacate)
M00 = filter(fir3,momentosDEDO{1,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{1,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{1,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{1,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{1,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{1,1}(:,6)')';
puntoDesp = 2228;
intervalo = 1704;
[objDedo1] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,indMomObjPalma1);
% [objDedo1] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,puntoDesp,intervalo);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{1,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{1,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{1,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{1,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{1,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{1,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo1');
%%%%%%%%%%%%%%%%%%%%%%%% SOLO PARA EL OBJETO DEDO 1%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
umbralHaciaAtras = 1700;
for ii = 1:size(objDedo1)
    vAux = objDedo1{ii,1};
    tam = size(vAux,1);  
    if(tam > umbralHaciaAtras)
        vNuevo = vAux(tam-umbralHaciaAtras:tam,:);
        objDedo1{ii,1} = vNuevo;
    end
    vNuevo = [];
    vAux = [];
end



% OBJETO 2 (berenjena)
M00 = filter(fir3,momentosDEDO{2,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{2,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{2,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{2,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{2,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{2,1}(:,6)')';
puntoDesp = 831;
% intervalo = 1704;
intervalo = 1761;
[objDedo2] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,indMomObjPalma2);
% [objDedo2] = computeMomCellDesplazamiento(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,puntoDesp,intervalo);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{2,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{2,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{2,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on ;
%plot(momentosDEDO{2,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{2,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{2,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo2');

% OBJETO 3 (ciruela)
M00 = filter(fir3,momentosDEDO{3,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{3,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{3,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{3,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{3,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{3,1}(:,6)')';
[objDedo3] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,indMomObjPalma3);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{3,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{3,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{3,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{3,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{3,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{3,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo3');

% OBJETO 4 (cubo SINO)
M00 = filter(fir3,momentosDEDO{4,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{4,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{4,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{4,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{4,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{4,1}(:,6)')';
[objDedo4] = computeMomCellReparaciones(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e4,indMomObjPalma4);
% [objDedo4] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e4);
% [objDedo4] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{4,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{4,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{4,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{4,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{4,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{4,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo4');

% OBJETO 5 (cubo vertical)
M00 = filter(fir3,momentosDEDO{5,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{5,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{5,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{5,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{5,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{5,1}(:,6)')';
[objDedo5] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma5);
% [objDedo5] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{5,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{5,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{5,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{5,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{5,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{5,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo5');

% OBJETO 6 (esfera moradita)
M00 = filter(fir3,momentosDEDO{6,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{6,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{6,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{6,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{6,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{6,1}(:,6)')';
[objDedo6] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1.5e4,indMomObjPalma6);
% [objDedo6] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1.5e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{6,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{6,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{6,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{6,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{6,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{6,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo6');

% OBJETO 7 (esfera verde blanda) --> Incidencia: apenas hay datos....
% M00 = filter(fir3,momentosDEDO{7,1}(:,1)')';
% M10 = filter(fir3,momentosDEDO{7,1}(:,2)')';
% M01 = filter(fir3,momentosDEDO{7,1}(:,3)')';
% M20 = filter(fir3,momentosDEDO{7,1}(:,4)')';
% M11 = filter(fir3,momentosDEDO{7,1}(:,5)')';
% M02 = filter(fir3,momentosDEDO{7,1}(:,6)')';
% [objDedo7] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e3,indMomObjPalma7);
% % [objDedo7] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e3);
% %[minim,promine] = islocalmin(M00);
% %%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{7,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{7,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{7,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{7,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{7,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{7,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo7');

% OBJETO 8 (esfera verde dura)
M00 = filter(fir3,momentosDEDO{8,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{8,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{8,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{8,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{8,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{8,1}(:,6)')';
[objDedo8] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma8);
% [objDedo8] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{8,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{8,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{8,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{8,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{8,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{8,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo8');

% OBJETO 9 (gel hidroalcoholico) --> incidencia: salen muchos "picotazos"
M00 = filter(fir3,momentosDEDO{9,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{9,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{9,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{9,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{9,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{9,1}(:,6)')';
[objDedo9] = computeMomCellReparaciones(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma9);
% [objDedo9] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4);
% [objDedo9] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{9,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{9,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{9,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{9,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{9,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{9,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo9');

% OBJETO 10 (kiwi)
M00 = filter(fir3,momentosDEDO{10,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{10,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{10,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{10,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{10,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{10,1}(:,6)')';
[objDedo10] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5,indMomObjPalma10);
% [objDedo10] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{10,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{10,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{10,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{10,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{10,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{10,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo10');

% OBJETO 11 (lechuga)
M00 = filter(fir3,momentosDEDO{11,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{11,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{11,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{11,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{11,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{11,1}(:,6)')';
[objDedo11] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,indMomObjPalma11);
% [objDedo11] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{11,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{11,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{11,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{11,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{11,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{11,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo11');

% OBJETO 12 (limon manduro)
M00 = filter(fir3,momentosDEDO{12,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{12,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{12,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{12,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{12,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{12,1}(:,6)')';
[objDedo12] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5,indMomObjPalma12);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{12,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{12,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{12,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{12,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{12,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{12,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo12');

% OBJETO 13 (limon verde)
M00 = filter(fir3,momentosDEDO{13,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{13,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{13,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{13,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{13,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{13,1}(:,6)')';
[objDedo13] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,indMomObjPalma13);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{13,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{13,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{13,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{13,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{13,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{13,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo13');

% OBJETO 14 (mandarina (blanda))
M00 = filter(fir3,momentosDEDO{14,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{14,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{14,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{14,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{14,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{14,1}(:,6)')';
[objDedo14] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.7e5,indMomObjPalma14);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{14,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{14,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{14,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{14,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{14,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{14,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo14');

% OBJETO 15 (mandarina pequeña)
M00 = filter(fir3,momentosDEDO{15,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{15,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{15,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{15,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{15,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{15,1}(:,6)')';
[objDedo15] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5,indMomObjPalma15);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{15,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{15,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{15,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{15,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{15,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{15,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo15');

% OBJETO 16 (nectarina podrida)
M00 = filter(fir3,momentosDEDO{16,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{16,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{16,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{16,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{16,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{16,1}(:,6)')';
[objDedo16] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),6e4,indMomObjPalma16);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{16,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{16,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{16,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{16,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{16,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{16,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo16');

% OBJETO 17 (ovoide azul abajo)
M00 = filter(fir3,momentosDEDO{17,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{17,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{17,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{17,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{17,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{17,1}(:,6)')';
[objDedo17] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma17);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{17,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{17,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{17,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{17,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{17,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{17,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo17');

% OBJETO 18 (ovoide azul arriba)
M00 = filter(fir3,momentosDEDO{18,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{18,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{18,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{18,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{18,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{18,1}(:,6)')';
[objDedo18] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),5e4,indMomObjPalma18);
[minim,promine] = islocalmin(M00);
figure;plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{18,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{18,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{18,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{18,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{18,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{18,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo18');

% OBJETO 19 (ovoide azul horizontal)
M00 = filter(fir3,momentosDEDO{19,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{19,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{19,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{19,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{19,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{19,1}(:,6)')';
[objDedo19] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma19);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{19,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{19,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{19,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{19,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{19,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{19,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo19');

% OBJETO 20 (ovoide morado abajo)
M00 = filter(fir3,momentosDEDO{20,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{20,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{20,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{20,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{20,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{20,1}(:,6)')';
[objDedo20] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma20);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{20,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{20,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{20,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{20,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{20,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{20,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo20');

% OBJETO 21 (ovoide morado arriba)
M00 = filter(fir3,momentosDEDO{21,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{21,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{21,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{21,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{21,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{21,1}(:,6)')';
[objDedo21] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e4,indMomObjPalma21);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{21,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{21,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{21,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{21,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{21,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{21,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo21');

% OBJETO 22 (ovoide morado horizontal)
M00 = filter(fir3,momentosDEDO{22,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{22,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{22,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{22,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{22,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{22,1}(:,6)')';
[objDedo22] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.2e5,indMomObjPalma22);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{22,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{22,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{22,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{22,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{22,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{22,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo22');

% OBJETO 23 (ovoide naranja abajo)  --> Incidencia: no hay 51, hay unos 39
M00 = filter(fir3,momentosDEDO{23,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{23,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{23,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{23,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{23,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{23,1}(:,6)')';
[objDedo23] = computeMomCellReparaciones(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.4e4,indMomObjPalma23);
% [objDedo23] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.4e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{23,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{23,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{23,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{23,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{23,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{23,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo23');

% OBJETO 24 (ovoide naranja arriba)
M00 = filter(fir3,momentosDEDO{24,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{24,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{24,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{24,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{24,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{24,1}(:,6)')';
[objDedo24] = computeMomCellReparaciones(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.7e4,indMomObjPalma24);
% [objDedo24] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.7e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{24,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{24,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{24,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{24,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{24,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{24,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo24');

% OBJETO 25 (ovoide naranja horizontal)
M00 = filter(fir3,momentosDEDO{25,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{25,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{25,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{25,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{25,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{25,1}(:,6)')';
[objDedo25] = computeMomCellReparaciones(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1.8e4,indMomObjPalma25);
% [objDedo25] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1.8e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{25,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{25,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{25,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{25,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{25,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{25,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo25');

% OBJETO 26 (ovoide verde abajo)
M00 = filter(fir3,momentosDEDO{26,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{26,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{26,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{26,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{26,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{26,1}(:,6)')';
[objDedo26] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2.5e4,indMomObjPalma26);
[minim,promine] = islocalmin(M00);
figure;plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{26,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{26,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{26,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{26,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{26,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{26,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo26');

% OBJETO 27 (ovoide verde arriba) --> incidencia: mucho ruido
M00 = filter(fir3,momentosDEDO{27,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{27,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{27,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{27,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{27,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{27,1}(:,6)')';
[objDedo27] = computeMomCellReparaciones(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1.5e4,indMomObjPalma27);
% [objDedo27] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1.5e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{27,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{27,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{27,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{27,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{27,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{27,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo27');

% OBJETO 28 (ovoide verde horizontal)
M00 = filter(fir3,momentosDEDO{28,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{28,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{28,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{28,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{28,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{28,1}(:,6)')';
[objDedo28] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),3e4,indMomObjPalma28);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{28,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{28,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{28,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{28,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{28,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{28,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo28');

% OBJETO 29 (patata)
M00 = filter(fir3,momentosDEDO{29,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{29,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{29,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{29,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{29,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{29,1}(:,6)')';
[objDedo29] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,indMomObjPalma29);
% [objDedo29] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{29,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{29,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{29,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{29,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{29,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{29,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo29');

% OBJETO 30 (pelota padel)
M00 = filter(fir3,momentosDEDO{30,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{30,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{30,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{30,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{30,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{30,1}(:,6)')';
[objDedo30] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma30);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{30,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{30,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{30,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{30,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{30,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{30,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo30');

% OBJETO 31 (pera)
M00 = filter(fir3,momentosDEDO{31,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{31,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{31,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{31,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{31,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{31,1}(:,6)')';
[objDedo31] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,indMomObjPalma31);
% [objDedo31] = computeMomCell(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5);
% % Reajustamos las tramas de 15 a 25 que empiezan demasiado tarde
% for i = 15:25
%     MAT_M_AUX = objDedo31{i,1};
%     objDedo31{i,1} = [];
%     objDedo31{i,1} = MAT_M_AUX(350:end,:);
% end
% [minim,promine] = islocalmin(M00);
% figure;
% hold on;grid on;box on;
% for k = 15:25
%     plot(objDedo31{k,1}(:,1));
%     title('obj31');
% end
% figure;plot(promine);
% figure;hold on;box on;grid on;
% subplot(2,3,1);hold on;box on;grid on;
% plot(momentosDEDO{31,1}(:,1),'b','LineWidth',3);plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
% subplot(2,3,2);hold on;box on;grid on;
% plot(momentosDEDO{31,1}(:,2),'b','LineWidth',3);plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
% subplot(2,3,3);hold on;box on;grid on;
% plot(momentosDEDO{31,1}(:,3),'b','LineWidth',3);plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
% subplot(2,3,4);hold on;box on;grid on;
% plot(momentosDEDO{31,1}(:,4),'b','LineWidth',3);plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
% subplot(2,3,5);hold on;box on;grid on;
% plot(momentosDEDO{31,1}(:,5),'b','LineWidth',3);plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
% subplot(2,3,6);hold on;box on;grid on;
% plot(momentosDEDO{31,1}(:,6),'b','LineWidth',3);plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo31');

%%%%%%%%%%%%%%%%%%%%%%%% SOLO PARA EL OBJETO DEDO 31%%%%%%%%%%%%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
umbralHaciaAtras = 1400;
for ii = 1:size(objDedo31)
    vAux = objDedo31{ii,1};
    tam = size(vAux,1);  
    if(tam > umbralHaciaAtras)
        vNuevo = vAux(tam-umbralHaciaAtras:tam,:);
        objDedo31{ii,1} = vNuevo;
    end
    vNuevo = [];
    vAux = [];
end





% OBJETO 32 (piramide abajo)
M00 = filter(fir3,momentosDEDO{32,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{32,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{32,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{32,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{32,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{32,1}(:,6)')';
[objDedo32] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e4,indMomObjPalma32);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{32,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{32,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{32,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{32,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{32,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{32,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo32');

% OBJETO 33 (piramide arriba)
M00 = filter(fir3,momentosDEDO{33,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{33,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{33,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{33,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{33,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{33,1}(:,6)')';
[objDedo33] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma33);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{33,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{33,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{33,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{33,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{33,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{33,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo33');

% OBJETO 34 (platano)
M00 = filter(fir3,momentosDEDO{34,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{34,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{34,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{34,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{34,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{34,1}(:,6)')';
[objDedo34] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5,indMomObjPalma34);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{34,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{34,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{34,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{34,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{34,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{34,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo34');

% OBJETO 35 (platano maduro)
M00 = filter(fir3,momentosDEDO{35,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{35,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{35,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{35,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{35,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{35,1}(:,6)')';
[objDedo35] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),3e4,indMomObjPalma35);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{35,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{35,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{35,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{35,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{35,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{35,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo35');

% OBJETO 36 (platano podrido) -- incidencia: sale raro las graficas de abajo...
M00 = filter(fir3,momentosDEDO{36,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{36,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{36,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{36,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{36,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{36,1}(:,6)')';
[objDedo36] = computeMomCellReparaciones(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),4e4,indMomObjPalma36);
% [objDedo36] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e4);
% [objDedo36] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e4);
[minim,promine] = islocalmin(M00);
figure;plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{36,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{36,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{36,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{36,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{36,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{36,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo36');

% OBJETO 37 (tomate)
M00 = filter(fir3,momentosDEDO{37,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{37,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{37,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{37,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{37,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{37,1}(:,6)')';
[objDedo37] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5,indMomObjPalma37);
% [objDedo37] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),0.5e5);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{37,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{37,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{37,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{37,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{37,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{37,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo37');

% OBJETO 38 (toride horizontal)
M00 = filter(fir3,momentosDEDO{38,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{38,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{38,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{38,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{38,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{38,1}(:,6)')';
[objDedo38] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma38);
% [objDedo38] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{38,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{38,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{38,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{38,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{38,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{38,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo38');

% OBJETO 39 (toroide vertical)
M00 = filter(fir3,momentosDEDO{39,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{39,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{39,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{39,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{39,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{39,1}(:,6)')';
[objDedo39] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),3e4,indMomObjPalma39);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{39,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{39,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{39,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{39,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{39,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{39,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo39');

% OBJETO 40 (triangulo abajo)
M00 = filter(fir3,momentosDEDO{40,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{40,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{40,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{40,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{40,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{40,1}(:,6)')';
[objDedo40] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),3e4,indMomObjPalma40);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{40,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{40,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{40,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{40,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{40,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{40,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo40');

% OBJETO 41 (triangulo arriba)
M00 = filter(fir3,momentosDEDO{41,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{41,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{41,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{41,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{41,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{41,1}(:,6)')';
[objDedo41] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),2e4,indMomObjPalma41);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{41,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{41,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{41,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{41,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{41,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{41,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo41');

% OBJETO 42 (triangulo horizontal)
M00 = filter(fir3,momentosDEDO{42,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{42,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{42,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{42,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{42,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{42,1}(:,6)')';
[objDedo42] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),4e4,indMomObjPalma42);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{42,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{42,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{42,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{42,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{42,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{42,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo42');

% OBJETO 43 (zanahoria)
M00 = filter(fir3,momentosDEDO{43,1}(:,1)')';
M10 = filter(fir3,momentosDEDO{43,1}(:,2)')';
M01 = filter(fir3,momentosDEDO{43,1}(:,3)')';
M20 = filter(fir3,momentosDEDO{43,1}(:,4)')';
M11 = filter(fir3,momentosDEDO{43,1}(:,5)')';
M02 = filter(fir3,momentosDEDO{43,1}(:,6)')';
[objDedo43] = computeMomCellDEDOREPARACIONES(M00(grpDel:end,1),M10(grpDel:end,1),M01(grpDel:end,1),M20(grpDel:end,1),M11(grpDel:end,1),M02(grpDel:end,1),1e5,indMomObjPalma43);
%[minim,promine] = islocalmin(M00);
%%figure;%plot(promine);
%figure;hold on;box on;grid on;
%subplot(2,3,1);hold on;box on;grid on;
%plot(momentosDEDO{43,1}(:,1),'b','LineWidth',3);%plot(M00(grpDel:end,1),'r','LineWidth',3);legend('M00','M00-filtered');
%subplot(2,3,2);hold on;box on;grid on;
%plot(momentosDEDO{43,1}(:,2),'b','LineWidth',3);%plot(M10(grpDel:end,1),'r','LineWidth',3);legend('M10','M10-filtered');
%subplot(2,3,3);hold on;box on;grid on;
%plot(momentosDEDO{43,1}(:,3),'b','LineWidth',3);%plot(M01(grpDel:end,1),'r','LineWidth',3);legend('M01','M01-filtered');
%subplot(2,3,4);hold on;box on;grid on;
%plot(momentosDEDO{43,1}(:,4),'b','LineWidth',3);%plot(M20(grpDel:end,1),'r','LineWidth',3);legend('M20','M20-filtered');
%subplot(2,3,5);hold on;box on;grid on;
%plot(momentosDEDO{43,1}(:,5),'b','LineWidth',3);%plot(M11(grpDel:end,1),'r','LineWidth',3);legend('M11','M11-filtered');
%subplot(2,3,6);hold on;box on;grid on;
%plot(momentosDEDO{43,1}(:,6),'b','LineWidth',3);%plot(M02(grpDel:end,1),'r','LineWidth',3);legend('M02','M02-filtered');
%sgtitle('objDedo43');

%% Reajustamos las tramas de 15 a 25 que empiezan demasiado tarde SOLO PARA EL OBJETO 31
% for i = 15:25
%     MAT_M_AUX = objDedo31{i,1};
%     objDedo31{i,1} = [];
%     objDedo31{i,1} = MAT_M_AUX(350:end,:);
% end

% %% Reajustamos las tramas de 15 a 25 que empiezan demasiado tarde SOLO PARA EL OBJETO 36
% for i = 1:51
%     MAT_M_AUX = objDedo36{i,1};
%     indMax36 = find(MAT_M_AUX==max(MAT_M_AUX(:,1)));
%     objDedo36{i,1} = [];
%     objDedo36{i,1} = MAT_M_AUX(indMax36-750:end,:);
% end

%% Salvamos los obj
% Del dedo 
save('objDedo1.mat','objDedo1');
save('objDedo2.mat','objDedo2');
save('objDedo3.mat','objDedo3');
save('objDedo4.mat','objDedo4');
save('objDedo5.mat','objDedo5');
save('objDedo6.mat','objDedo6');
% save('objDedo7.mat','objDedo7');
save('objDedo8.mat','objDedo8');
save('objDedo9.mat','objDedo9');
save('objDedo10.mat','objDedo10');
save('objDedo11.mat','objDedo11');
save('objDedo12.mat','objDedo12');
save('objDedo13.mat','objDedo13');
save('objDedo14.mat','objDedo14');
save('objDedo15.mat','objDedo15');
save('objDedo16.mat','objDedo16');
save('objDedo17.mat','objDedo17');
save('objDedo18.mat','objDedo18');
save('objDedo19.mat','objDedo19');
save('objDedo20.mat','objDedo20');
save('objDedo21.mat','objDedo21');
save('objDedo22.mat','objDedo22');
save('objDedo23.mat','objDedo23');
save('objDedo24.mat','objDedo24');
save('objDedo25.mat','objDedo25');
save('objDedo26.mat','objDedo26');
save('objDedo27.mat','objDedo27');
save('objDedo28.mat','objDedo28');
save('objDedo29.mat','objDedo29');
save('objDedo30.mat','objDedo30');
save('objDedo31.mat','objDedo31');
save('objDedo32.mat','objDedo32');
save('objDedo33.mat','objDedo33');
save('objDedo34.mat','objDedo34');
save('objDedo35.mat','objDedo35');
save('objDedo36.mat','objDedo36');
save('objDedo37.mat','objDedo37');
save('objDedo38.mat','objDedo38');
save('objDedo39.mat','objDedo39');
save('objDedo40.mat','objDedo40');
save('objDedo41.mat','objDedo41');
save('objDedo42.mat','objDedo42');
save('objDedo43.mat','objDedo43');

% De la palma
save('objPalma1.mat','objPalma1');
save('objPalma2.mat','objPalma2');
save('objPalma3.mat','objPalma3');
save('objPalma4.mat','objPalma4');
save('objPalma5.mat','objPalma5');
save('objPalma6.mat','objPalma6');
save('objPalma7.mat','objPalma7');
save('objPalma8.mat','objPalma8');
save('objPalma9.mat','objPalma9');
save('objPalma10.mat','objPalma10');
save('objPalma11.mat','objPalma11');
save('objPalma12.mat','objPalma12');
save('objPalma13.mat','objPalma13');
save('objPalma14.mat','objPalma14');
save('objPalma15.mat','objPalma15');
save('objPalma16.mat','objPalma16');
save('objPalma17.mat','objPalma17');
save('objPalma18.mat','objPalma18');
save('objPalma19.mat','objPalma19');
save('objPalma20.mat','objPalma20');
save('objPalma21.mat','objPalma21');
save('objPalma22.mat','objPalma22');
save('objPalma23.mat','objPalma23');
save('objPalma24.mat','objPalma24');
save('objPalma25.mat','objPalma25');
save('objPalma26.mat','objPalma26');
save('objPalma27.mat','objPalma27');
save('objPalma28.mat','objPalma28');
save('objPalma29.mat','objPalma29');
save('objPalma30.mat','objPalma30');
save('objPalma31.mat','objPalma31');
save('objPalma32.mat','objPalma32');
save('objPalma33.mat','objPalma33');
save('objPalma34.mat','objPalma34');
save('objPalma35.mat','objPalma35');
save('objPalma36.mat','objPalma36');
save('objPalma37.mat','objPalma37');
save('objPalma38.mat','objPalma38');
save('objPalma39.mat','objPalma39');
save('objPalma40.mat','objPalma40');
save('objPalma41.mat','objPalma41');
save('objPalma42.mat','objPalma42');
save('objPalma43.mat','objPalma43');

%% Vamos a quedarnos con 25 tramas de palma y dedo en cada caso.
vectorRnd = 2:50;
nIteraciones = size(vectorRnd,2);
% EL DEDO Y PALMA PARA EL OBJETO 7 (ESFERA BLANDA) LOS DESCARTAMOS POR AHORA
k = 1;
% vectorRnd = sort(randperm(50,nIteraciones) + 4)


% vectorRnd = [4:22,24:50];

% Segunda parte de la sección justo anterior
for bFactor = 1:nIteraciones
    i = vectorRnd(1,bFactor);
    % DEDO
    objDedo1_smallDim{k,1} = objDedo1{i,1};
    objDedo2_smallDim{k,1} = objDedo2{i,1};
    objDedo3_smallDim{k,1} = objDedo3{i,1};
    objDedo4_smallDim{k,1} = objDedo4{i,1};
    objDedo5_smallDim{k,1} = objDedo5{i,1};
    objDedo6_smallDim{k,1} = objDedo6{i,1};
%     objDedo7_smallDim{k,1} = objDedo7{i,1};   % (ESFERA BLANDA)

    objDedo8_smallDim{k,1} = objDedo8{i,1};
    objDedo9_smallDim{k,1} = objDedo9{i,1};
    objDedo10_smallDim{k,1} = objDedo10{i,1};
    objDedo11_smallDim{k,1} = objDedo11{i,1};
    objDedo12_smallDim{k,1} = objDedo12{i,1};
    objDedo13_smallDim{k,1} = objDedo13{i,1};

    objDedo14_smallDim{k,1} = objDedo14{i,1};
    objDedo15_smallDim{k,1} = objDedo15{i,1};
    objDedo16_smallDim{k,1} = objDedo16{i,1};
    objDedo17_smallDim{k,1} = objDedo17{i,1};
    objDedo18_smallDim{k,1} = objDedo18{i,1};
    objDedo19_smallDim{k,1} = objDedo19{i,1};
    objDedo20_smallDim{k,1} = objDedo20{i,1};
    objDedo21_smallDim{k,1} = objDedo21{i,1};

    objDedo22_smallDim{k,1} = objDedo22{i,1};
    objDedo23_smallDim{k,1} = objDedo23{i,1};
    objDedo24_smallDim{k,1} = objDedo24{i,1};
    objDedo25_smallDim{k,1} = objDedo25{i,1};

    objDedo26_smallDim{k,1} = objDedo26{i,1};
    objDedo27_smallDim{k,1} = objDedo27{i,1};
    objDedo28_smallDim{k,1} = objDedo28{i,1};
    objDedo29_smallDim{k,1} = objDedo29{i,1};
    objDedo30_smallDim{k,1} = objDedo30{i,1};
    objDedo31_smallDim{k,1} = objDedo31{i,1};

    objDedo32_smallDim{k,1} = objDedo32{i,1};
    objDedo33_smallDim{k,1} = objDedo33{i,1};
    objDedo34_smallDim{k,1} = objDedo34{i,1};
    objDedo35_smallDim{k,1} = objDedo35{i,1};
    objDedo36_smallDim{k,1} = objDedo36{i,1};
    objDedo37_smallDim{k,1} = objDedo37{i,1};

    objDedo38_smallDim{k,1} = objDedo38{i,1};
    objDedo39_smallDim{k,1} = objDedo39{i,1};
    objDedo40_smallDim{k,1} = objDedo40{i,1};
    objDedo41_smallDim{k,1} = objDedo41{i,1};
    objDedo42_smallDim{k,1} = objDedo42{i,1};
    objDedo43_smallDim{k,1} = objDedo43{i,1};

    % PALMA
    objPalma1_smallDim{k,1} = objPalma1{i,1};
    objPalma2_smallDim{k,1} = objPalma2{i,1};
    objPalma3_smallDim{k,1} = objPalma3{i,1};
    objPalma4_smallDim{k,1} = objPalma4{i,1};
    objPalma5_smallDim{k,1} = objPalma5{i,1};
    objPalma6_smallDim{k,1} = objPalma6{i,1};
%     objPalma7_smallDim{k,1} = objPalma7{i,1};   % (ESFERA BLANDA)

    objPalma8_smallDim{k,1} = objPalma8{i,1};
    objPalma9_smallDim{k,1} = objPalma9{i,1};
    objPalma10_smallDim{k,1} = objPalma10{i,1};
    objPalma11_smallDim{k,1} = objPalma11{i,1};
    objPalma12_smallDim{k,1} = objPalma12{i,1};
    objPalma13_smallDim{k,1} = objPalma13{i,1};

    objPalma14_smallDim{k,1} = objPalma14{i,1};
    objPalma15_smallDim{k,1} = objPalma15{i,1};
    objPalma16_smallDim{k,1} = objPalma16{i,1};
    objPalma17_smallDim{k,1} = objPalma17{i,1};
    objPalma18_smallDim{k,1} = objPalma18{i,1};
    objPalma19_smallDim{k,1} = objPalma19{i,1};
    objPalma20_smallDim{k,1} = objPalma20{i,1};
    objPalma21_smallDim{k,1} = objPalma21{i,1};

    objPalma22_smallDim{k,1} = objPalma22{i,1};
    objPalma23_smallDim{k,1} = objPalma23{i,1};
    objPalma24_smallDim{k,1} = objPalma24{i,1};
    objPalma25_smallDim{k,1} = objPalma25{i,1};

    objPalma26_smallDim{k,1} = objPalma26{i,1};
    objPalma27_smallDim{k,1} = objPalma27{i,1};
    objPalma28_smallDim{k,1} = objPalma28{i,1};
    objPalma29_smallDim{k,1} = objPalma29{i,1};
    objPalma30_smallDim{k,1} = objPalma30{i,1};
    objPalma31_smallDim{k,1} = objPalma31{i,1};

    objPalma32_smallDim{k,1} = objPalma32{i,1};
    objPalma33_smallDim{k,1} = objPalma33{i,1};
    objPalma34_smallDim{k,1} = objPalma34{i,1};
    objPalma35_smallDim{k,1} = objPalma35{i,1};
    objPalma36_smallDim{k,1} = objPalma36{i,1};
    objPalma37_smallDim{k,1} = objPalma37{i,1};

    objPalma38_smallDim{k,1} = objPalma38{i,1};
    objPalma39_smallDim{k,1} = objPalma39{i,1};
    objPalma40_smallDim{k,1} = objPalma40{i,1};
    objPalma41_smallDim{k,1} = objPalma41{i,1};
    objPalma42_smallDim{k,1} = objPalma42{i,1};
    objPalma43_smallDim{k,1} = objPalma43{i,1};

    % Incrementamos k
    k = k+1;
end

%% Vamos a crear una estructura superior para intentar agruparlos a todos
% DEDO
strSuperiorDedo = cell(43,1);
strSuperiorDedo{1,1} = objDedo1_smallDim;
strSuperiorDedo{2,1} = objDedo2_smallDim;
strSuperiorDedo{3,1} = objDedo3_smallDim;
strSuperiorDedo{4,1} = objDedo4_smallDim;
strSuperiorDedo{5,1} = objDedo5_smallDim;
strSuperiorDedo{6,1} = objDedo6_smallDim;
strSuperiorDedo{7,1} = [0 0 0 0 0 0];
strSuperiorDedo{8,1} = objDedo8_smallDim;
strSuperiorDedo{9,1} = objDedo9_smallDim;
strSuperiorDedo{10,1} = objDedo10_smallDim;
strSuperiorDedo{11,1} = objDedo11_smallDim;
strSuperiorDedo{12,1} = objDedo12_smallDim;
strSuperiorDedo{13,1} = objDedo13_smallDim;
strSuperiorDedo{14,1} = objDedo14_smallDim;
strSuperiorDedo{15,1} = objDedo15_smallDim;
strSuperiorDedo{16,1} = objDedo16_smallDim;
strSuperiorDedo{17,1} = objDedo17_smallDim;
strSuperiorDedo{18,1} = objDedo18_smallDim;
strSuperiorDedo{19,1} = objDedo19_smallDim;
strSuperiorDedo{20,1} = objDedo20_smallDim;
strSuperiorDedo{21,1} = objDedo21_smallDim;
strSuperiorDedo{22,1} = objDedo22_smallDim;
strSuperiorDedo{23,1} = objDedo23_smallDim;
strSuperiorDedo{24,1} = objDedo24_smallDim;
strSuperiorDedo{25,1} = objDedo25_smallDim;
strSuperiorDedo{26,1} = objDedo26_smallDim;
strSuperiorDedo{27,1} = objDedo27_smallDim;
strSuperiorDedo{28,1} = objDedo28_smallDim;
strSuperiorDedo{29,1} = objDedo29_smallDim;
strSuperiorDedo{30,1} = objDedo30_smallDim;
strSuperiorDedo{31,1} = objDedo31_smallDim;
strSuperiorDedo{32,1} = objDedo32_smallDim;
strSuperiorDedo{33,1} = objDedo33_smallDim;
strSuperiorDedo{34,1} = objDedo34_smallDim;
strSuperiorDedo{35,1} = objDedo35_smallDim;
strSuperiorDedo{36,1} = objDedo36_smallDim;
strSuperiorDedo{37,1} = objDedo37_smallDim;
strSuperiorDedo{38,1} = objDedo38_smallDim;
strSuperiorDedo{39,1} = objDedo39_smallDim;
strSuperiorDedo{40,1} = objDedo40_smallDim;
strSuperiorDedo{41,1} = objDedo41_smallDim;
strSuperiorDedo{42,1} = objDedo42_smallDim;
strSuperiorDedo{43,1} = objDedo43_smallDim;


% PALMA
strSuperiorPalma = cell(43,1);
strSuperiorPalma{1,1} = objPalma1_smallDim;
strSuperiorPalma{2,1} = objPalma2_smallDim;
strSuperiorPalma{3,1} = objPalma3_smallDim;
strSuperiorPalma{4,1} = objPalma4_smallDim;
strSuperiorPalma{5,1} = objPalma5_smallDim;
strSuperiorPalma{6,1} = objPalma6_smallDim;
strSuperiorPalma{7,1} = [0 0 0 0 0 0];
strSuperiorPalma{8,1} = objPalma8_smallDim;
strSuperiorPalma{9,1} = objPalma9_smallDim;
strSuperiorPalma{10,1} = objPalma10_smallDim;
strSuperiorPalma{11,1} = objPalma11_smallDim;
strSuperiorPalma{12,1} = objPalma12_smallDim;
strSuperiorPalma{13,1} = objPalma13_smallDim;
strSuperiorPalma{14,1} = objPalma14_smallDim;
strSuperiorPalma{15,1} = objPalma15_smallDim;
strSuperiorPalma{16,1} = objPalma16_smallDim;
strSuperiorPalma{17,1} = objPalma17_smallDim;
strSuperiorPalma{18,1} = objPalma18_smallDim;
strSuperiorPalma{19,1} = objPalma19_smallDim;
strSuperiorPalma{20,1} = objPalma20_smallDim;
strSuperiorPalma{21,1} = objPalma21_smallDim;
strSuperiorPalma{22,1} = objPalma22_smallDim;
strSuperiorPalma{23,1} = objPalma23_smallDim;
strSuperiorPalma{24,1} = objPalma24_smallDim;
strSuperiorPalma{25,1} = objPalma25_smallDim;
strSuperiorPalma{26,1} = objPalma26_smallDim;
strSuperiorPalma{27,1} = objPalma27_smallDim;
strSuperiorPalma{28,1} = objPalma28_smallDim;
strSuperiorPalma{29,1} = objPalma29_smallDim;
strSuperiorPalma{30,1} = objPalma30_smallDim;
strSuperiorPalma{31,1} = objPalma31_smallDim;
strSuperiorPalma{32,1} = objPalma32_smallDim;
strSuperiorPalma{33,1} = objPalma33_smallDim;
strSuperiorPalma{34,1} = objPalma34_smallDim;
strSuperiorPalma{35,1} = objPalma35_smallDim;
strSuperiorPalma{36,1} = objPalma36_smallDim;
strSuperiorPalma{37,1} = objPalma37_smallDim;
strSuperiorPalma{38,1} = objPalma38_smallDim;
strSuperiorPalma{39,1} = objPalma39_smallDim;
strSuperiorPalma{40,1} = objPalma40_smallDim;
strSuperiorPalma{41,1} = objPalma41_smallDim;
strSuperiorPalma{42,1} = objPalma42_smallDim;
strSuperiorPalma{43,1} = objPalma43_smallDim;

%% Ahora vamos a quedarnos con aquellas iteraciones en cada caso que estén cerca de la mediana de tamaños de la celda
strSupDedo = cell(43,1);
strSupPalma = cell(43,1);
% Las iteraciones se quitarán tanto en dedo como en palma
vectorMedianasTam = zeros(1,43);
for i = 1:43
   iter = 1;
   if(i==7)
       % Trama mala
       dumyy = 0;
   else
       % Tramas buenas
       tamano = size(strSuperiorPalma{i,1},1);
       vectorTamanos = zeros(1,tamano);
       for k = 1:tamano
           vectorTamanos(1,k) = size(strSuperiorPalma{i,1}{k,1},1);
       end
       vectorMedianasTam(1,i) = median(vectorTamanos);
       for k = 1:tamano
          if(vectorTamanos(1,k)<vectorMedianasTam(1,i)-700 || vectorTamanos(1,k)>vectorMedianasTam(1,i)+700)
          else
              strSupDedo{i,1}{iter,1} = strSuperiorDedo{i,1}{iter,1};
              strSupPalma{i,1}{iter,1} = strSuperiorPalma{i,1}{iter,1};
              iter = iter + 1;
          end
       end
   end   
end


%% Cambiamos la representación usando las nuevas celdas
% DEDO
figure;
for i = 1:43
    if(i==7)
    else
        subplot(7,7,i);
        hold on;grid on;box on;
        for k = 1:size(strSupDedo{i,1},1)
            plot(strSupDedo{i,1}{k,1}(:,1));   
            title(strcat('obj-',num2str(i)));
        end
    end    
end
sgtitle('MATRIZ-DEDO');

% PALMA
figure;
for i = 1:43
    if(i==7)
    else
        subplot(7,7,i);
        hold on;grid on;box on;
        for k = 1:size(strSupPalma{i,1},1)
            plot(strSupPalma{i,1}{k,1}(:,1));   
            title(strcat('obj-',num2str(i)));
        end
    end    
end
sgtitle('MATRIZ-PALMA');

%% Curvas a borrar
% Del objeto 1, la 1 y la 2
% Del objeto 11, la 22
% Del objeto 20, la 1
% Del objeto 21, la 1 y la 2
% Del objeto 25, la 8, la 13, la 14, la 29, la 31, la 46  --> una vez quitados estos hay que quitar la 11 también
% Del objeto 27, la 4 y la 5
% Del objeto 43, la 24
% cellAuxiliarDedo = strSupDedo;
% cellAuxiliarPalma = strSupPalma;
% for i = 1:43
%    if(i==7)
%    else
%        switch i
% %            case 1
% %                strSupDedo{1,1}(1:2,:) = [];
% %                strSupPalma{1,1}(1:2,:) = [];
% %            case 11
% %                strSupDedo{11,1}(22,:) = [];
% %                strSupPalma{11,1}(22,:) = [];               
% %            case 20
% %                strSupDedo{20,1}(1,:) = [];
% %                strSupPalma{20,1}(1,:) = [];  
% %            case 21
% %                strSupDedo{21,1}(1:2,:) = [];
% %                strSupPalma{21,1}(1:2,:) = [];  
% % % %            case 25
% %                strSupDedo{25,1}(11,:) = [];  %%nuevo
% %                strSupPalma{25,1}(11,:) = []; %%nuevo
% %                strSupDedo{25,1}(46,:) = [];
% %                strSupPalma{25,1}(46,:) = [];  
% %                strSupDedo{25,1}(31,:) = [];
% %                strSupPalma{25,1}(31,:) = []; 
% %                strSupDedo{25,1}(29,:) = [];
% %                strSupPalma{25,1}(29,:) = [];  
% %                strSupDedo{25,1}(13:14,:) = [];
% %                strSupPalma{25,1}(13:14,:) = [];   
% %                strSupDedo{25,1}(8,:) = [];
% %                strSupPalma{25,1}(8,:) = []; 
% %            case 27
% %                strSupDedo{27,1}(4:5,:) = [];
% %                strSupPalma{27,1}(4:5,:) = [];  
% %            case 43
% %                strSupDedo{43,1}(24,:) = [];
% %                strSupPalma{43,1}(24,:) = [];  
%        end
%    end
% end

%% Salvamos strSupDedo y strSupPalma
save('strSupDedo.mat','strSupDedo');
save('strSupPalma.mat','strSupPalma');


%% Creamos nuevas celdas de medfilt
objDedo_medFilt = cell(43,1);
objPalma_medFilt = cell(43,1);

ordenFiltro = 400;
for i = 1:43
   if(i==7)
   else
       for k = 1:size(strSupPalma{i,1},1)
           objDedo_medFilt{i,1}{k,1} = medfilt1(strSupDedo{i,1}{k,1},ordenFiltro);
           objPalma_medFilt{i,1}{k,1} = medfilt1(strSupPalma{i,1}{k,1},ordenFiltro);
       end
   end
end

%% Nueva representacion para medfilt
% Creamos dos vectores de puntos maximos o centrales...
nObjetos = 43;
puntosMaxCentrPalma = zeros(nIteraciones,nObjetos);
puntosMaxCentrDedo = zeros(nIteraciones,nObjetos);

% PLOTS DE SMALL-DIM DE LA PALMA
figure;hold on;box on;grid on;
for i = 1:43
   if(i==7)
   else
        subplot(7,7,i);
        hold on;grid on;box on;
        for k = 1:size(strSupPalma{i,1},1)
            plot(strSupPalma{i,1}{k,1}(:,1));   
%             plot(objPalma_medFilt{i,1}{k,1}(:,1));   
%             title(strcat('medFiltObj-',num2str(i)));    
            hold on;
            indMax = find(objPalma_medFilt{i,1}{k,1}(:,1) == max(objPalma_medFilt{i,1}{k,1}(:,1)));
            indiceMaximo = indMax(round(length(indMax)/2),1);
            plot(indiceMaximo,strSupPalma{i,1}{k,1}(indiceMaximo,1),'black.','MarkerSize',12);
            title(strcat('medFiltObj-',num2str(i))); 
            puntosMaxCentrPalma(k,i) = indiceMaximo;
        end
   end
end
sgtitle('MATRIZ-PALMA-MEDFILT');

% PLOTS DE SMALL-DIM DEL DEDO
figure;hold on;box on;grid on;
for i = 1:43
   if(i==7)
   else
        subplot(7,7,i);
        hold on;grid on;box on;
        for k = 1:size(strSupDedo{i,1},1)
            plot(strSupDedo{i,1}{k,1}(:,1));   
%             plot(objDedo_medFilt{i,1}{k,1}(:,1));   
%             title(strcat('medFiltObj-',num2str(i)));    
            hold on;
            indMax = find(objDedo_medFilt{i,1}{k,1}(:,1) == max(objDedo_medFilt{i,1}{k,1}(:,1)));
            indiceMaximo = indMax(round(length(indMax)/2),1);
            plot(indiceMaximo,strSupDedo{i,1}{k,1}(indiceMaximo,1),'black.','MarkerSize',12);
            title(strcat('medFiltObj-',num2str(i))); 
            puntosMaxCentrDedo(k,i) = indiceMaximo;
        end
   end
end
sgtitle('MATRIZ-DEDO-MEDFILT');


%% Reajustamos las tramas SOLO PARA EL OBJETO 36
for k = 1:size(strSupDedo{36,1},1)
    MAT_M_AUX = strSupDedo{36,1}{k,1};
    strSupDedo{36,1}{k,1} = [];
    strSupDedo{36,1}{k,1} = MAT_M_AUX(puntosMaxCentrDedo(k,36)-750:end,:);
end

for k = 1:size(strSupPalma{36,1},1)
    MAT_M_AUX = strSupPalma{36,1}{k,1};
    strSupPalma{36,1}{k,1} = [];
    strSupPalma{36,1}{k,1} = MAT_M_AUX(puntosMaxCentrPalma(k,36)-750:end,:);
end






%% Para cada objeto (obj) de DEDO y PALMA hay que calcular 4 descriptores:
% Descriptor 1: Area
% Descriptor 2: Punto Maximo/Punto Central  -->  puntosMaxCentrPalma    puntosMaxCentrDedo
% Descriptor 3: Histeresis
% Descriptor 4: Anchura

%% DEDO
% objDedo1
indiceMaxCentr = puntosMaxCentrDedo(:,1);
[descriptorObjDedo1] = computeDescriptorRigidez_v3(objDedo1_smallDim,nIteraciones,indiceMaxCentr);

% objDedo2
indiceMaxCentr = puntosMaxCentrDedo(:,2);
[descriptorObjDedo2] = computeDescriptorRigidez_v3(objDedo2_smallDim,nIteraciones,indiceMaxCentr);

% objDedo3
indiceMaxCentr = puntosMaxCentrDedo(:,3);
[descriptorObjDedo3] = computeDescriptorRigidez_v3(objDedo3_smallDim,nIteraciones,indiceMaxCentr);

% objDedo4
indiceMaxCentr = puntosMaxCentrDedo(:,4);
[descriptorObjDedo4] = computeDescriptorRigidez_v3(objDedo4_smallDim,nIteraciones,indiceMaxCentr);

% objDedo5
indiceMaxCentr = puntosMaxCentrDedo(:,5);
[descriptorObjDedo5] = computeDescriptorRigidez_v3(objDedo5_smallDim,nIteraciones,indiceMaxCentr);

% objDedo6
indiceMaxCentr = puntosMaxCentrDedo(:,6);
[descriptorObjDedo6] = computeDescriptorRigidez_v3(objDedo6_smallDim,nIteraciones,indiceMaxCentr);

% objDedo7 -- ESFERA BLANDA
% indiceMaxCentr = puntosMaxCentrDedo(:,7);
% [descriptorObjDedo7] = computeDescriptorRigidez_v3(objDedo7_smallDim,nIteraciones,indiceMaxCentr);

% objDedo8
indiceMaxCentr = puntosMaxCentrDedo(:,8);
[descriptorObjDedo8] = computeDescriptorRigidez_v3(objDedo8_smallDim,nIteraciones,indiceMaxCentr);

% objDedo9
indiceMaxCentr = puntosMaxCentrDedo(:,9);
[descriptorObjDedo9] = computeDescriptorRigidez_v3(objDedo9_smallDim,nIteraciones,indiceMaxCentr);

% objDedo10
indiceMaxCentr = puntosMaxCentrDedo(:,10);
[descriptorObjDedo10] = computeDescriptorRigidez_v3(objDedo10_smallDim,nIteraciones,indiceMaxCentr);

% objDedo11
indiceMaxCentr = puntosMaxCentrDedo(:,11);
[descriptorObjDedo11] = computeDescriptorRigidez_v3(objDedo11_smallDim,nIteraciones,indiceMaxCentr);

% objDedo12
indiceMaxCentr = puntosMaxCentrDedo(:,12);
[descriptorObjDedo12] = computeDescriptorRigidez_v3(objDedo12_smallDim,nIteraciones,indiceMaxCentr);

% objDedo13
indiceMaxCentr = puntosMaxCentrDedo(:,13);
[descriptorObjDedo13] = computeDescriptorRigidez_v3(objDedo13_smallDim,nIteraciones,indiceMaxCentr);

% objDedo14
indiceMaxCentr = puntosMaxCentrDedo(:,14);
[descriptorObjDedo14] = computeDescriptorRigidez_v3(objDedo14_smallDim,nIteraciones,indiceMaxCentr);

% objDedo15
indiceMaxCentr = puntosMaxCentrDedo(:,15);
[descriptorObjDedo15] = computeDescriptorRigidez_v3(objDedo15_smallDim,nIteraciones,indiceMaxCentr);

% objDedo16
indiceMaxCentr = puntosMaxCentrDedo(:,16);
[descriptorObjDedo16] = computeDescriptorRigidez_v3(objDedo16_smallDim,nIteraciones,indiceMaxCentr);

% objDedo17
indiceMaxCentr = puntosMaxCentrDedo(:,17);
[descriptorObjDedo17] = computeDescriptorRigidez_v3(objDedo17_smallDim,nIteraciones,indiceMaxCentr);

% objDedo18
indiceMaxCentr = puntosMaxCentrDedo(:,18);
[descriptorObjDedo18] = computeDescriptorRigidez_v3(objDedo18_smallDim,nIteraciones,indiceMaxCentr);

% objDedo19
indiceMaxCentr = puntosMaxCentrDedo(:,19);
[descriptorObjDedo19] = computeDescriptorRigidez_v3(objDedo19_smallDim,nIteraciones,indiceMaxCentr);

% objDedo20
indiceMaxCentr = puntosMaxCentrDedo(:,20);
[descriptorObjDedo20] = computeDescriptorRigidez_v3(objDedo20_smallDim,nIteraciones,indiceMaxCentr);

% objDedo21
indiceMaxCentr = puntosMaxCentrDedo(:,21);
[descriptorObjDedo21] = computeDescriptorRigidez_v3(objDedo21_smallDim,nIteraciones,indiceMaxCentr);

% objDedo22
indiceMaxCentr = puntosMaxCentrDedo(:,22);
[descriptorObjDedo22] = computeDescriptorRigidez_v3(objDedo22_smallDim,nIteraciones,indiceMaxCentr);

% objDedo23
indiceMaxCentr = puntosMaxCentrDedo(:,23);
[descriptorObjDedo23] = computeDescriptorRigidez_v3(objDedo23_smallDim,nIteraciones,indiceMaxCentr);

% objDedo24
indiceMaxCentr = puntosMaxCentrDedo(:,24);
[descriptorObjDedo24] = computeDescriptorRigidez_v3(objDedo24_smallDim,nIteraciones,indiceMaxCentr);

% objDedo25
indiceMaxCentr = puntosMaxCentrDedo(:,25);
[descriptorObjDedo25] = computeDescriptorRigidez_v3(objDedo25_smallDim,nIteraciones,indiceMaxCentr);

% objDedo26
indiceMaxCentr = puntosMaxCentrDedo(:,26);
[descriptorObjDedo26] = computeDescriptorRigidez_v3(objDedo26_smallDim,nIteraciones,indiceMaxCentr);

% objDedo27
indiceMaxCentr = puntosMaxCentrDedo(:,27);
[descriptorObjDedo27] = computeDescriptorRigidez_v3(objDedo27_smallDim,nIteraciones,indiceMaxCentr);

% objDedo28
indiceMaxCentr = puntosMaxCentrDedo(:,28);
[descriptorObjDedo28] = computeDescriptorRigidez_v3(objDedo28_smallDim,nIteraciones,indiceMaxCentr);

% objDedo29
indiceMaxCentr = puntosMaxCentrDedo(:,29);
[descriptorObjDedo29] = computeDescriptorRigidez_v3(objDedo29_smallDim,nIteraciones,indiceMaxCentr);

% objDedo30
indiceMaxCentr = puntosMaxCentrDedo(:,30);
[descriptorObjDedo30] = computeDescriptorRigidez_v3(objDedo30_smallDim,nIteraciones,indiceMaxCentr);

% objDedo31
indiceMaxCentr = puntosMaxCentrDedo(:,31);
[descriptorObjDedo31] = computeDescriptorRigidez_v3(objDedo31_smallDim,nIteraciones,indiceMaxCentr);

% objDedo32
indiceMaxCentr = puntosMaxCentrDedo(:,32);
[descriptorObjDedo32] = computeDescriptorRigidez_v3(objDedo32_smallDim,nIteraciones,indiceMaxCentr);

% objDedo33
indiceMaxCentr = puntosMaxCentrDedo(:,33);
[descriptorObjDedo33] = computeDescriptorRigidez_v3(objDedo33_smallDim,nIteraciones,indiceMaxCentr);

% objDedo34
indiceMaxCentr = puntosMaxCentrDedo(:,34);
[descriptorObjDedo34] = computeDescriptorRigidez_v3(objDedo34_smallDim,nIteraciones,indiceMaxCentr);

% objDedo35
indiceMaxCentr = puntosMaxCentrDedo(:,35);
[descriptorObjDedo35] = computeDescriptorRigidez_v3(objDedo35_smallDim,nIteraciones,indiceMaxCentr);

% objDedo36
indiceMaxCentr = puntosMaxCentrDedo(:,36);
[descriptorObjDedo36] = computeDescriptorRigidez_v3(objDedo36_smallDim,nIteraciones,indiceMaxCentr);

% objDedo37
indiceMaxCentr = puntosMaxCentrDedo(:,37);
[descriptorObjDedo37] = computeDescriptorRigidez_v3(objDedo37_smallDim,nIteraciones,indiceMaxCentr);

% objDedo38
indiceMaxCentr = puntosMaxCentrDedo(:,38);
[descriptorObjDedo38] = computeDescriptorRigidez_v3(objDedo38_smallDim,nIteraciones,indiceMaxCentr);

% objDedo39
indiceMaxCentr = puntosMaxCentrDedo(:,39);
[descriptorObjDedo39] = computeDescriptorRigidez_v3(objDedo39_smallDim,nIteraciones,indiceMaxCentr);

% objDedo40
indiceMaxCentr = puntosMaxCentrDedo(:,40);
[descriptorObjDedo40] = computeDescriptorRigidez_v3(objDedo40_smallDim,nIteraciones,indiceMaxCentr);

% objDedo41
indiceMaxCentr = puntosMaxCentrDedo(:,41);
[descriptorObjDedo41] = computeDescriptorRigidez_v3(objDedo41_smallDim,nIteraciones,indiceMaxCentr);

% objDedo42
indiceMaxCentr = puntosMaxCentrDedo(:,42);
[descriptorObjDedo42] = computeDescriptorRigidez_v3(objDedo42_smallDim,nIteraciones,indiceMaxCentr);

% objDedo43
indiceMaxCentr = puntosMaxCentrDedo(:,43);
[descriptorObjDedo43] = computeDescriptorRigidez_v3(objDedo43_smallDim,nIteraciones,indiceMaxCentr);

%% PALMA
% objPalma1
indiceMaxCentr = puntosMaxCentrPalma(:,1);
[descriptorObjPalma1] = computeDescriptorRigidez_v3(objPalma1_smallDim,nIteraciones,indiceMaxCentr);

% objPalma2
indiceMaxCentr = puntosMaxCentrPalma(:,2);
[descriptorObjPalma2] = computeDescriptorRigidez_v3(objPalma2_smallDim,nIteraciones,indiceMaxCentr);

% objPalma3
indiceMaxCentr = puntosMaxCentrPalma(:,3);
[descriptorObjPalma3] = computeDescriptorRigidez_v3(objPalma3_smallDim,nIteraciones,indiceMaxCentr);

% objPalma4
indiceMaxCentr = puntosMaxCentrPalma(:,4);
[descriptorObjPalma4] = computeDescriptorRigidez_v3(objPalma4_smallDim,nIteraciones,indiceMaxCentr);

% objPalma5
indiceMaxCentr = puntosMaxCentrPalma(:,5);
[descriptorObjPalma5] = computeDescriptorRigidez_v3(objPalma5_smallDim,nIteraciones,indiceMaxCentr);

% objPalma6
indiceMaxCentr = puntosMaxCentrPalma(:,6);
[descriptorObjPalma6] = computeDescriptorRigidez_v3(objPalma6_smallDim,nIteraciones,indiceMaxCentr);

% objPalma7 -- ESFERA BLANDA
% indiceMaxCentr = puntosMaxCentrPalma(:,7);
% [descriptorObjPalma7] = computeDescriptorRigidez_v3(objPalma7_smallDim,nIteraciones,indiceMaxCentr);

% objPalma8
indiceMaxCentr = puntosMaxCentrPalma(:,8);
[descriptorObjPalma8] = computeDescriptorRigidez_v3(objPalma8_smallDim,nIteraciones,indiceMaxCentr);

% objPalma9
indiceMaxCentr = puntosMaxCentrPalma(:,9);
[descriptorObjPalma9] = computeDescriptorRigidez_v3(objPalma9_smallDim,nIteraciones,indiceMaxCentr);

% objPalma10
indiceMaxCentr = puntosMaxCentrPalma(:,10);
[descriptorObjPalma10] = computeDescriptorRigidez_v3(objPalma10_smallDim,nIteraciones,indiceMaxCentr);

% objPalma11
indiceMaxCentr = puntosMaxCentrPalma(:,11);
[descriptorObjPalma11] = computeDescriptorRigidez_v3(objPalma11_smallDim,nIteraciones,indiceMaxCentr);

% objPalma12
indiceMaxCentr = puntosMaxCentrPalma(:,12);
[descriptorObjPalma12] = computeDescriptorRigidez_v3(objPalma12_smallDim,nIteraciones,indiceMaxCentr);

% objPalma13
indiceMaxCentr = puntosMaxCentrPalma(:,13);
[descriptorObjPalma13] = computeDescriptorRigidez_v3(objPalma13_smallDim,nIteraciones,indiceMaxCentr);

% objPalma14
indiceMaxCentr = puntosMaxCentrPalma(:,14);
[descriptorObjPalma14] = computeDescriptorRigidez_v3(objPalma14_smallDim,nIteraciones,indiceMaxCentr);

% objPalma15
indiceMaxCentr = puntosMaxCentrPalma(:,15);
[descriptorObjPalma15] = computeDescriptorRigidez_v3(objPalma15_smallDim,nIteraciones,indiceMaxCentr);

% objPalma16
indiceMaxCentr = puntosMaxCentrPalma(:,16);
[descriptorObjPalma16] = computeDescriptorRigidez_v3(objPalma16_smallDim,nIteraciones,indiceMaxCentr);

% objPalma17
indiceMaxCentr = puntosMaxCentrPalma(:,17);
[descriptorObjPalma17] = computeDescriptorRigidez_v3(objPalma17_smallDim,nIteraciones,indiceMaxCentr);

% objPalma18
indiceMaxCentr = puntosMaxCentrPalma(:,18);
[descriptorObjPalma18] = computeDescriptorRigidez_v3(objPalma18_smallDim,nIteraciones,indiceMaxCentr);

% objPalma19
indiceMaxCentr = puntosMaxCentrPalma(:,19);
[descriptorObjPalma19] = computeDescriptorRigidez_v3(objPalma19_smallDim,nIteraciones,indiceMaxCentr);

% objPalma20
indiceMaxCentr = puntosMaxCentrPalma(:,20);
[descriptorObjPalma20] = computeDescriptorRigidez_v3(objPalma20_smallDim,nIteraciones,indiceMaxCentr);

% objPalma21
indiceMaxCentr = puntosMaxCentrPalma(:,21);
[descriptorObjPalma21] = computeDescriptorRigidez_v3(objPalma21_smallDim,nIteraciones,indiceMaxCentr);

% objPalma22
indiceMaxCentr = puntosMaxCentrPalma(:,22);
[descriptorObjPalma22] = computeDescriptorRigidez_v3(objPalma22_smallDim,nIteraciones,indiceMaxCentr);

% objPalma23
indiceMaxCentr = puntosMaxCentrPalma(:,23);
[descriptorObjPalma23] = computeDescriptorRigidez_v3(objPalma23_smallDim,nIteraciones,indiceMaxCentr);

% objPalma24
indiceMaxCentr = puntosMaxCentrPalma(:,24);
[descriptorObjPalma24] = computeDescriptorRigidez_v3(objPalma24_smallDim,nIteraciones,indiceMaxCentr);

% objPalma25
indiceMaxCentr = puntosMaxCentrPalma(:,25);
[descriptorObjPalma25] = computeDescriptorRigidez_v3(objPalma25_smallDim,nIteraciones,indiceMaxCentr);

% objPalma26
indiceMaxCentr = puntosMaxCentrPalma(:,26);
[descriptorObjPalma26] = computeDescriptorRigidez_v3(objPalma26_smallDim,nIteraciones,indiceMaxCentr);

% objPalma27
indiceMaxCentr = puntosMaxCentrPalma(:,27);
[descriptorObjPalma27] = computeDescriptorRigidez_v3(objPalma27_smallDim,nIteraciones,indiceMaxCentr);

% objPalma28
indiceMaxCentr = puntosMaxCentrPalma(:,28);
[descriptorObjPalma28] = computeDescriptorRigidez_v3(objPalma28_smallDim,nIteraciones,indiceMaxCentr);

% objPalma29
indiceMaxCentr = puntosMaxCentrPalma(:,29);
[descriptorObjPalma29] = computeDescriptorRigidez_v3(objPalma29_smallDim,nIteraciones,indiceMaxCentr);

% objPalma30
indiceMaxCentr = puntosMaxCentrPalma(:,30);
[descriptorObjPalma30] = computeDescriptorRigidez_v3(objPalma30_smallDim,nIteraciones,indiceMaxCentr);

% objPalma31
indiceMaxCentr = puntosMaxCentrPalma(:,31);
[descriptorObjPalma31] = computeDescriptorRigidez_v3(objPalma31_smallDim,nIteraciones,indiceMaxCentr);

% objPalma32
indiceMaxCentr = puntosMaxCentrPalma(:,32);
[descriptorObjPalma32] = computeDescriptorRigidez_v3(objPalma32_smallDim,nIteraciones,indiceMaxCentr);

% objPalma33
indiceMaxCentr = puntosMaxCentrPalma(:,33);
[descriptorObjPalma33] = computeDescriptorRigidez_v3(objPalma33_smallDim,nIteraciones,indiceMaxCentr);

% objPalma34
indiceMaxCentr = puntosMaxCentrPalma(:,34);
[descriptorObjPalma34] = computeDescriptorRigidez_v3(objPalma34_smallDim,nIteraciones,indiceMaxCentr);

% objPalma35
indiceMaxCentr = puntosMaxCentrPalma(:,35);
[descriptorObjPalma35] = computeDescriptorRigidez_v3(objPalma35_smallDim,nIteraciones,indiceMaxCentr);

% objPalma36
indiceMaxCentr = puntosMaxCentrPalma(:,36);
[descriptorObjPalma36] = computeDescriptorRigidez_v3(objPalma36_smallDim,nIteraciones,indiceMaxCentr);

% objPalma37
indiceMaxCentr = puntosMaxCentrPalma(:,37);
[descriptorObjPalma37] = computeDescriptorRigidez_v3(objPalma37_smallDim,nIteraciones,indiceMaxCentr);

% objPalma38
indiceMaxCentr = puntosMaxCentrPalma(:,38);
[descriptorObjPalma38] = computeDescriptorRigidez_v3(objPalma38_smallDim,nIteraciones,indiceMaxCentr);

% objPalma39
indiceMaxCentr = puntosMaxCentrPalma(:,39);
[descriptorObjPalma39] = computeDescriptorRigidez_v3(objPalma39_smallDim,nIteraciones,indiceMaxCentr);

% objPalma40
indiceMaxCentr = puntosMaxCentrPalma(:,40);
[descriptorObjPalma40] = computeDescriptorRigidez_v3(objPalma40_smallDim,nIteraciones,indiceMaxCentr);

% objPalma41
indiceMaxCentr = puntosMaxCentrPalma(:,41);
[descriptorObjPalma41] = computeDescriptorRigidez_v3(objPalma41_smallDim,nIteraciones,indiceMaxCentr);

% objPalma42
indiceMaxCentr = puntosMaxCentrPalma(:,42);
[descriptorObjPalma42] = computeDescriptorRigidez_v3(objPalma42_smallDim,nIteraciones,indiceMaxCentr);

% objPalma43
indiceMaxCentr = puntosMaxCentrPalma(:,43);
[descriptorObjPalma43] = computeDescriptorRigidez_v3(objPalma43_smallDim,nIteraciones,indiceMaxCentr);

%% Vamos a hacer gráficos de barras y/o bigotes de los descriptores para ver cómo varían --Descriptor 1
nIteraciones = 47;
numerosArray = 1:43; stringNumeros = cell(43,1); 
descrp1forObj = zeros(43,4);
close all;
figure;
for i = 1:nIteraciones
%     stringNumeros{i,1} = num2str(numerosArray(1,i));
%     strcat('descriptorObjDedo',stringNumeros{i,1})
    descrp1forObj(i,1) = descriptorObjDedo1{i,1}(1,1); 
    descrp1forObj(i,2) = descriptorObjDedo2{i,1}(1,1); 
    descrp1forObj(i,3) = descriptorObjDedo3{i,1}(1,1); 
    descrp1forObj(i,4) = descriptorObjDedo4{i,1}(1,1); 
    descrp1forObj(i,5) = descriptorObjDedo5{i,1}(1,1); 
    descrp1forObj(i,6) = descriptorObjDedo6{i,1}(1,1); 
%     descrp1forObj(i,7) = descriptorObjDedo7{i,1}(1,1); 
    descrp1forObj(i,8) = descriptorObjDedo8{i,1}(1,1); 
    descrp1forObj(i,9) = descriptorObjDedo9{i,1}(1,1); 
    descrp1forObj(i,10) = descriptorObjDedo10{i,1}(1,1);     
    descrp1forObj(i,11) = descriptorObjDedo11{i,1}(1,1); 
    descrp1forObj(i,12) = descriptorObjDedo12{i,1}(1,1); 
    descrp1forObj(i,13) = descriptorObjDedo13{i,1}(1,1); 
    descrp1forObj(i,14) = descriptorObjDedo14{i,1}(1,1); 
    descrp1forObj(i,15) = descriptorObjDedo15{i,1}(1,1); 
    descrp1forObj(i,16) = descriptorObjDedo16{i,1}(1,1); 
    descrp1forObj(i,17) = descriptorObjDedo17{i,1}(1,1); 
    descrp1forObj(i,18) = descriptorObjDedo18{i,1}(1,1); 
    descrp1forObj(i,19) = descriptorObjDedo19{i,1}(1,1); 
    descrp1forObj(i,20) = descriptorObjDedo20{i,1}(1,1);    
    descrp1forObj(i,21) = descriptorObjDedo21{i,1}(1,1); 
    descrp1forObj(i,22) = descriptorObjDedo22{i,1}(1,1); 
    descrp1forObj(i,23) = descriptorObjDedo23{i,1}(1,1); 
    descrp1forObj(i,24) = descriptorObjDedo24{i,1}(1,1); 
    descrp1forObj(i,25) = descriptorObjDedo25{i,1}(1,1); 
    descrp1forObj(i,26) = descriptorObjDedo26{i,1}(1,1); 
    descrp1forObj(i,27) = descriptorObjDedo27{i,1}(1,1); 
    descrp1forObj(i,28) = descriptorObjDedo28{i,1}(1,1); 
    descrp1forObj(i,29) = descriptorObjDedo29{i,1}(1,1); 
    descrp1forObj(i,30) = descriptorObjDedo30{i,1}(1,1);    
    descrp1forObj(i,31) = descriptorObjDedo31{i,1}(1,1); 
    descrp1forObj(i,32) = descriptorObjDedo32{i,1}(1,1); 
    descrp1forObj(i,33) = descriptorObjDedo33{i,1}(1,1); 
    descrp1forObj(i,34) = descriptorObjDedo34{i,1}(1,1); 
    descrp1forObj(i,35) = descriptorObjDedo35{i,1}(1,1); 
    descrp1forObj(i,36) = descriptorObjDedo36{i,1}(1,1); 
    descrp1forObj(i,37) = descriptorObjDedo37{i,1}(1,1); 
    descrp1forObj(i,38) = descriptorObjDedo38{i,1}(1,1); 
    descrp1forObj(i,39) = descriptorObjDedo39{i,1}(1,1); 
    descrp1forObj(i,40) = descriptorObjDedo40{i,1}(1,1); 
    descrp1forObj(i,41) = descriptorObjDedo41{i,1}(1,1); 
    descrp1forObj(i,42) = descriptorObjDedo42{i,1}(1,1); 
    descrp1forObj(i,43) = descriptorObjDedo43{i,1}(1,1); 
end
% boxchart(descrp1forObj,'BoxFaceColor','r','MarkerColor','r');
boxchart(descrp1forObj);
sgtitle('Descriptor1 (area) para cada objeto -- DEDO');

% PALMA
figure;
descrp1forObj = zeros(43,4);
for i = 1:nIteraciones
%     stringNumeros{i,1} = num2str(numerosArray(1,i));
%     strcat('descriptorObjPalma',stringNumeros{i,1})
    descrp1forObj(i,1) = descriptorObjPalma1{i,1}(1,1); 
    descrp1forObj(i,2) = descriptorObjPalma2{i,1}(1,1); 
    descrp1forObj(i,3) = descriptorObjPalma3{i,1}(1,1); 
    descrp1forObj(i,4) = descriptorObjPalma4{i,1}(1,1); 
    descrp1forObj(i,5) = descriptorObjPalma5{i,1}(1,1); 
    descrp1forObj(i,6) = descriptorObjPalma6{i,1}(1,1); 
%     descrp1forObj(i,7) = descriptorObjPalma7{i,1}(1,1); 
    descrp1forObj(i,8) = descriptorObjPalma8{i,1}(1,1); 
    descrp1forObj(i,9) = descriptorObjPalma9{i,1}(1,1); 
    descrp1forObj(i,10) = descriptorObjPalma10{i,1}(1,1);     
    descrp1forObj(i,11) = descriptorObjPalma11{i,1}(1,1); 
    descrp1forObj(i,12) = descriptorObjPalma12{i,1}(1,1); 
    descrp1forObj(i,13) = descriptorObjPalma13{i,1}(1,1); 
    descrp1forObj(i,14) = descriptorObjPalma14{i,1}(1,1); 
    descrp1forObj(i,15) = descriptorObjPalma15{i,1}(1,1); 
    descrp1forObj(i,16) = descriptorObjPalma16{i,1}(1,1); 
    descrp1forObj(i,17) = descriptorObjPalma17{i,1}(1,1); 
    descrp1forObj(i,18) = descriptorObjPalma18{i,1}(1,1); 
    descrp1forObj(i,19) = descriptorObjPalma19{i,1}(1,1); 
    descrp1forObj(i,20) = descriptorObjPalma20{i,1}(1,1);    
    descrp1forObj(i,21) = descriptorObjPalma21{i,1}(1,1); 
    descrp1forObj(i,22) = descriptorObjPalma22{i,1}(1,1); 
    descrp1forObj(i,23) = descriptorObjPalma23{i,1}(1,1); 
    descrp1forObj(i,24) = descriptorObjPalma24{i,1}(1,1); 
    descrp1forObj(i,25) = descriptorObjPalma25{i,1}(1,1); 
    descrp1forObj(i,26) = descriptorObjPalma26{i,1}(1,1); 
    descrp1forObj(i,27) = descriptorObjPalma27{i,1}(1,1); 
    descrp1forObj(i,28) = descriptorObjPalma28{i,1}(1,1); 
    descrp1forObj(i,29) = descriptorObjPalma29{i,1}(1,1); 
    descrp1forObj(i,30) = descriptorObjPalma30{i,1}(1,1);    
    descrp1forObj(i,31) = descriptorObjPalma31{i,1}(1,1); 
    descrp1forObj(i,32) = descriptorObjPalma32{i,1}(1,1); 
    descrp1forObj(i,33) = descriptorObjPalma33{i,1}(1,1); 
    descrp1forObj(i,34) = descriptorObjPalma34{i,1}(1,1); 
    descrp1forObj(i,35) = descriptorObjPalma35{i,1}(1,1); 
    descrp1forObj(i,36) = descriptorObjPalma36{i,1}(1,1); 
    descrp1forObj(i,37) = descriptorObjPalma37{i,1}(1,1); 
    descrp1forObj(i,38) = descriptorObjPalma38{i,1}(1,1); 
    descrp1forObj(i,39) = descriptorObjPalma39{i,1}(1,1); 
    descrp1forObj(i,40) = descriptorObjPalma40{i,1}(1,1); 
    descrp1forObj(i,41) = descriptorObjPalma41{i,1}(1,1); 
    descrp1forObj(i,42) = descriptorObjPalma42{i,1}(1,1); 
    descrp1forObj(i,43) = descriptorObjPalma43{i,1}(1,1); 
end
boxchart(descrp1forObj);
sgtitle('Descriptor1 (area) para cada objeto -- Palma');

%%%% Vamos a hacer gráficos de barras y/o bigotes de los descriptores para ver cómo varían --Descriptor 2
nIteraciones = 47;
numerosArray = 1:43; stringNumeros = cell(43,1); 
descrp2forObj = zeros(43,4);
figure;
for i = 1:nIteraciones
%     stringNumeros{i,1} = num2str(numerosArray(1,i));
%     strcat('descriptorObjDedo',stringNumeros{i,1})
    descrp2forObj(i,1) = descriptorObjDedo1{i,1}(2,1);
    descrp2forObj(i,2) = descriptorObjDedo2{i,1}(2,1);
    descrp2forObj(i,3) = descriptorObjDedo3{i,1}(2,1);
    descrp2forObj(i,4) = descriptorObjDedo4{i,1}(2,1);
    descrp2forObj(i,5) = descriptorObjDedo5{i,1}(2,1);
    descrp2forObj(i,6) = descriptorObjDedo6{i,1}(2,1);
%     descrp2forObj(i,7) = descriptorObjDedo7{i,1}(2,1);
    descrp2forObj(i,8) = descriptorObjDedo8{i,1}(2,1);
    descrp2forObj(i,9) = descriptorObjDedo9{i,1}(2,1);
    descrp2forObj(i,10) = descriptorObjDedo10{i,1}(2,1);    
    descrp2forObj(i,11) = descriptorObjDedo11{i,1}(2,1);
    descrp2forObj(i,12) = descriptorObjDedo12{i,1}(2,1);
    descrp2forObj(i,13) = descriptorObjDedo13{i,1}(2,1);
    descrp2forObj(i,14) = descriptorObjDedo14{i,1}(2,1);
    descrp2forObj(i,15) = descriptorObjDedo15{i,1}(2,1);
    descrp2forObj(i,16) = descriptorObjDedo16{i,1}(2,1);
    descrp2forObj(i,17) = descriptorObjDedo17{i,1}(2,1);
    descrp2forObj(i,18) = descriptorObjDedo18{i,1}(2,1);
    descrp2forObj(i,19) = descriptorObjDedo19{i,1}(2,1);
    descrp2forObj(i,20) = descriptorObjDedo20{i,1}(2,1);   
    descrp2forObj(i,21) = descriptorObjDedo21{i,1}(2,1);
    descrp2forObj(i,22) = descriptorObjDedo22{i,1}(2,1);
    descrp2forObj(i,23) = descriptorObjDedo23{i,1}(2,1);
    descrp2forObj(i,24) = descriptorObjDedo24{i,1}(2,1);
    descrp2forObj(i,25) = descriptorObjDedo25{i,1}(2,1);
    descrp2forObj(i,26) = descriptorObjDedo26{i,1}(2,1);
    descrp2forObj(i,27) = descriptorObjDedo27{i,1}(2,1);
    descrp2forObj(i,28) = descriptorObjDedo28{i,1}(2,1);
    descrp2forObj(i,29) = descriptorObjDedo29{i,1}(2,1);
    descrp2forObj(i,30) = descriptorObjDedo30{i,1}(2,1);   
    descrp2forObj(i,31) = descriptorObjDedo31{i,1}(2,1);
    descrp2forObj(i,32) = descriptorObjDedo32{i,1}(2,1);
    descrp2forObj(i,33) = descriptorObjDedo33{i,1}(2,1);
    descrp2forObj(i,34) = descriptorObjDedo34{i,1}(2,1);
    descrp2forObj(i,35) = descriptorObjDedo35{i,1}(2,1);
    descrp2forObj(i,36) = descriptorObjDedo36{i,1}(2,1);
    descrp2forObj(i,37) = descriptorObjDedo37{i,1}(2,1);
    descrp2forObj(i,38) = descriptorObjDedo38{i,1}(2,1);
    descrp2forObj(i,39) = descriptorObjDedo39{i,1}(2,1);
    descrp2forObj(i,40) = descriptorObjDedo40{i,1}(2,1);
    descrp2forObj(i,41) = descriptorObjDedo41{i,1}(2,1);
    descrp2forObj(i,42) = descriptorObjDedo42{i,1}(2,1);
    descrp2forObj(i,43) = descriptorObjDedo43{i,1}(2,1);
end
boxchart(descrp2forObj);
sgtitle('Descriptor2 (maximo) para cada objeto -- DEDO');

% PALMA
figure;
descrp2forObj = zeros(43,4);
for i = 1:nIteraciones
%     stringNumeros{i,1} = num2str(numerosArray(1,i));
%     strcat('descriptorObjPalma',stringNumeros{i,1})
    descrp2forObj(i,1) = descriptorObjPalma1{i,1}(2,1);
    descrp2forObj(i,2) = descriptorObjPalma2{i,1}(2,1);
    descrp2forObj(i,3) = descriptorObjPalma3{i,1}(2,1);
    descrp2forObj(i,4) = descriptorObjPalma4{i,1}(2,1);
    descrp2forObj(i,5) = descriptorObjPalma5{i,1}(2,1);
    descrp2forObj(i,6) = descriptorObjPalma6{i,1}(2,1);
%     descrp2forObj(i,7) = descriptorObjPalma7{i,1}(2,1);
    descrp2forObj(i,8) = descriptorObjPalma8{i,1}(2,1);
    descrp2forObj(i,9) = descriptorObjPalma9{i,1}(2,1);
    descrp2forObj(i,10) = descriptorObjPalma10{i,1}(2,1);    
    descrp2forObj(i,11) = descriptorObjPalma11{i,1}(2,1);
    descrp2forObj(i,12) = descriptorObjPalma12{i,1}(2,1);
    descrp2forObj(i,13) = descriptorObjPalma13{i,1}(2,1);
    descrp2forObj(i,14) = descriptorObjPalma14{i,1}(2,1);
    descrp2forObj(i,15) = descriptorObjPalma15{i,1}(2,1);
    descrp2forObj(i,16) = descriptorObjPalma16{i,1}(2,1);
    descrp2forObj(i,17) = descriptorObjPalma17{i,1}(2,1);
    descrp2forObj(i,18) = descriptorObjPalma18{i,1}(2,1);
    descrp2forObj(i,19) = descriptorObjPalma19{i,1}(2,1);
    descrp2forObj(i,20) = descriptorObjPalma20{i,1}(2,1);   
    descrp2forObj(i,21) = descriptorObjPalma21{i,1}(2,1);
    descrp2forObj(i,22) = descriptorObjPalma22{i,1}(2,1);
    descrp2forObj(i,23) = descriptorObjPalma23{i,1}(2,1);
    descrp2forObj(i,24) = descriptorObjPalma24{i,1}(2,1);
    descrp2forObj(i,25) = descriptorObjPalma25{i,1}(2,1);
    descrp2forObj(i,26) = descriptorObjPalma26{i,1}(2,1);
    descrp2forObj(i,27) = descriptorObjPalma27{i,1}(2,1);
    descrp2forObj(i,28) = descriptorObjPalma28{i,1}(2,1);
    descrp2forObj(i,29) = descriptorObjPalma29{i,1}(2,1);
    descrp2forObj(i,30) = descriptorObjPalma30{i,1}(2,1);   
    descrp2forObj(i,31) = descriptorObjPalma31{i,1}(2,1);
    descrp2forObj(i,32) = descriptorObjPalma32{i,1}(2,1);
    descrp2forObj(i,33) = descriptorObjPalma33{i,1}(2,1);
    descrp2forObj(i,34) = descriptorObjPalma34{i,1}(2,1);
    descrp2forObj(i,35) = descriptorObjPalma35{i,1}(2,1);
    descrp2forObj(i,36) = descriptorObjPalma36{i,1}(2,1);
    descrp2forObj(i,37) = descriptorObjPalma37{i,1}(2,1);
    descrp2forObj(i,38) = descriptorObjPalma38{i,1}(2,1);
    descrp2forObj(i,39) = descriptorObjPalma39{i,1}(2,1);
    descrp2forObj(i,40) = descriptorObjPalma40{i,1}(2,1);
    descrp2forObj(i,41) = descriptorObjPalma41{i,1}(2,1);
    descrp2forObj(i,42) = descriptorObjPalma42{i,1}(2,1);
    descrp2forObj(i,43) = descriptorObjPalma43{i,1}(2,1);
end
boxchart(descrp2forObj);
sgtitle('Descriptor2 (maximo) para cada objeto -- Palma');

%%%% Vamos a hacer gráficos de barras y/o bigotes de los descriptores para ver cómo varían --Descriptor 3
nIteraciones = 47;
numerosArray = 1:43; stringNumeros = cell(43,1); 
descrp3forObj = zeros(43,4);
figure;
for i = 1:nIteraciones
%     stringNumeros{i,1} = num2str(numerosArray(1,i));
%     strcat('descriptorObjDedo',stringNumeros{i,1})
    descrp3forObj(i,1) = descriptorObjDedo1{i,1}(3,1);
    descrp3forObj(i,2) = descriptorObjDedo2{i,1}(3,1);
    descrp3forObj(i,3) = descriptorObjDedo3{i,1}(3,1);
    descrp3forObj(i,4) = descriptorObjDedo4{i,1}(3,1);
    descrp3forObj(i,5) = descriptorObjDedo5{i,1}(3,1);
    descrp3forObj(i,6) = descriptorObjDedo6{i,1}(3,1);
%     descrp3forObj(i,7) = descriptorObjDedo7{i,1}(3,1);
    descrp3forObj(i,8) = descriptorObjDedo8{i,1}(3,1);
    descrp3forObj(i,9) = descriptorObjDedo9{i,1}(3,1);
    descrp3forObj(i,10) = descriptorObjDedo10{i,1}(3,1);    
    descrp3forObj(i,11) = descriptorObjDedo11{i,1}(3,1);
    descrp3forObj(i,12) = descriptorObjDedo12{i,1}(3,1);
    descrp3forObj(i,13) = descriptorObjDedo13{i,1}(3,1);
    descrp3forObj(i,14) = descriptorObjDedo14{i,1}(3,1);
    descrp3forObj(i,15) = descriptorObjDedo15{i,1}(3,1);
    descrp3forObj(i,16) = descriptorObjDedo16{i,1}(3,1);
    descrp3forObj(i,17) = descriptorObjDedo17{i,1}(3,1);
    descrp3forObj(i,18) = descriptorObjDedo18{i,1}(3,1);
    descrp3forObj(i,19) = descriptorObjDedo19{i,1}(3,1);
    descrp3forObj(i,20) = descriptorObjDedo20{i,1}(3,1);   
    descrp3forObj(i,21) = descriptorObjDedo21{i,1}(3,1);
    descrp3forObj(i,22) = descriptorObjDedo22{i,1}(3,1);
    descrp3forObj(i,23) = descriptorObjDedo23{i,1}(3,1);
    descrp3forObj(i,24) = descriptorObjDedo24{i,1}(3,1);
    descrp3forObj(i,25) = descriptorObjDedo25{i,1}(3,1);
    descrp3forObj(i,26) = descriptorObjDedo26{i,1}(3,1);
    descrp3forObj(i,27) = descriptorObjDedo27{i,1}(3,1);
    descrp3forObj(i,28) = descriptorObjDedo28{i,1}(3,1);
    descrp3forObj(i,29) = descriptorObjDedo29{i,1}(3,1);
    descrp3forObj(i,30) = descriptorObjDedo30{i,1}(3,1);   
    descrp3forObj(i,31) = descriptorObjDedo31{i,1}(3,1);
    descrp3forObj(i,32) = descriptorObjDedo32{i,1}(3,1);
    descrp3forObj(i,33) = descriptorObjDedo33{i,1}(3,1);
    descrp3forObj(i,34) = descriptorObjDedo34{i,1}(3,1);
    descrp3forObj(i,35) = descriptorObjDedo35{i,1}(3,1);
    descrp3forObj(i,36) = descriptorObjDedo36{i,1}(3,1);
    descrp3forObj(i,37) = descriptorObjDedo37{i,1}(3,1);
    descrp3forObj(i,38) = descriptorObjDedo38{i,1}(3,1);
    descrp3forObj(i,39) = descriptorObjDedo39{i,1}(3,1);
    descrp3forObj(i,40) = descriptorObjDedo40{i,1}(3,1);
    descrp3forObj(i,41) = descriptorObjDedo41{i,1}(3,1);
    descrp3forObj(i,42) = descriptorObjDedo42{i,1}(3,1);
    descrp3forObj(i,43) = descriptorObjDedo43{i,1}(3,1);
end
boxchart(descrp3forObj);
sgtitle('Descriptor3 (histeresis) para cada objeto -- DEDO');

% PALMA
figure;
descrp3forObj = zeros(43,4);
for i = 1:nIteraciones
%     stringNumeros{i,1} = num2str(numerosArray(1,i));
%     strcat('descriptorObjPalma',stringNumeros{i,1})
    descrp3forObj(i,1) = descriptorObjPalma1{i,1}(3,1);
    descrp3forObj(i,2) = descriptorObjPalma2{i,1}(3,1);
    descrp3forObj(i,3) = descriptorObjPalma3{i,1}(3,1);
    descrp3forObj(i,4) = descriptorObjPalma4{i,1}(3,1);
    descrp3forObj(i,5) = descriptorObjPalma5{i,1}(3,1);
    descrp3forObj(i,6) = descriptorObjPalma6{i,1}(3,1);
%     descrp3forObj(i,7) = descriptorObjPalma7{i,1}(3,1);
    descrp3forObj(i,8) = descriptorObjPalma8{i,1}(3,1);
    descrp3forObj(i,9) = descriptorObjPalma9{i,1}(3,1);
    descrp3forObj(i,10) = descriptorObjPalma10{i,1}(3,1);    
    descrp3forObj(i,11) = descriptorObjPalma11{i,1}(3,1);
    descrp3forObj(i,12) = descriptorObjPalma12{i,1}(3,1);
    descrp3forObj(i,13) = descriptorObjPalma13{i,1}(3,1);
    descrp3forObj(i,14) = descriptorObjPalma14{i,1}(3,1);
    descrp3forObj(i,15) = descriptorObjPalma15{i,1}(3,1);
    descrp3forObj(i,16) = descriptorObjPalma16{i,1}(3,1);
    descrp3forObj(i,17) = descriptorObjPalma17{i,1}(3,1);
    descrp3forObj(i,18) = descriptorObjPalma18{i,1}(3,1);
    descrp3forObj(i,19) = descriptorObjPalma19{i,1}(3,1);
    descrp3forObj(i,20) = descriptorObjPalma20{i,1}(3,1);   
    descrp3forObj(i,21) = descriptorObjPalma21{i,1}(3,1);
    descrp3forObj(i,22) = descriptorObjPalma22{i,1}(3,1);
    descrp3forObj(i,23) = descriptorObjPalma23{i,1}(3,1);
    descrp3forObj(i,24) = descriptorObjPalma24{i,1}(3,1);
    descrp3forObj(i,25) = descriptorObjPalma25{i,1}(3,1);
    descrp3forObj(i,26) = descriptorObjPalma26{i,1}(3,1);
    descrp3forObj(i,27) = descriptorObjPalma27{i,1}(3,1);
    descrp3forObj(i,28) = descriptorObjPalma28{i,1}(3,1);
    descrp3forObj(i,29) = descriptorObjPalma29{i,1}(3,1);
    descrp3forObj(i,30) = descriptorObjPalma30{i,1}(3,1);   
    descrp3forObj(i,31) = descriptorObjPalma31{i,1}(3,1);
    descrp3forObj(i,32) = descriptorObjPalma32{i,1}(3,1);
    descrp3forObj(i,33) = descriptorObjPalma33{i,1}(3,1);
    descrp3forObj(i,34) = descriptorObjPalma34{i,1}(3,1);
    descrp3forObj(i,35) = descriptorObjPalma35{i,1}(3,1);
    descrp3forObj(i,36) = descriptorObjPalma36{i,1}(3,1);
    descrp3forObj(i,37) = descriptorObjPalma37{i,1}(3,1);
    descrp3forObj(i,38) = descriptorObjPalma38{i,1}(3,1);
    descrp3forObj(i,39) = descriptorObjPalma39{i,1}(3,1);
    descrp3forObj(i,40) = descriptorObjPalma40{i,1}(3,1);
    descrp3forObj(i,41) = descriptorObjPalma41{i,1}(3,1);
    descrp3forObj(i,42) = descriptorObjPalma42{i,1}(3,1);
    descrp3forObj(i,43) = descriptorObjPalma43{i,1}(3,1);
end
boxchart(descrp3forObj);
sgtitle('Descriptor3 (histeresis) para cada objeto -- Palma');

%%%% Vamos a hacer gráficos de barras y/o bigotes de los descriptores para ver cómo varían --Descriptor 4
nIteraciones = 47;
numerosArray = 1:43; stringNumeros = cell(43,1); 
descrp4forObj = zeros(43,4);
figure;
for i = 1:nIteraciones
%     stringNumeros{i,1} = num2str(numerosArray(1,i));
%     strcat('descriptorObjDedo',stringNumeros{i,1})
    descrp4forObj(i,1) = descriptorObjDedo1{i,1}(4,1); 
    descrp4forObj(i,2) = descriptorObjDedo2{i,1}(4,1); 
    descrp4forObj(i,3) = descriptorObjDedo3{i,1}(4,1); 
    descrp4forObj(i,4) = descriptorObjDedo4{i,1}(4,1); 
    descrp4forObj(i,5) = descriptorObjDedo5{i,1}(4,1); 
    descrp4forObj(i,6) = descriptorObjDedo6{i,1}(4,1); 
%     descrp4forObj(i,7) = descriptorObjDedo7{i,1}(4,1); 
    descrp4forObj(i,8) = descriptorObjDedo8{i,1}(4,1); 
    descrp4forObj(i,9) = descriptorObjDedo9{i,1}(4,1); 
    descrp4forObj(i,10) = descriptorObjDedo10{i,1}(4,1);     
    descrp4forObj(i,11) = descriptorObjDedo11{i,1}(4,1); 
    descrp4forObj(i,12) = descriptorObjDedo12{i,1}(4,1); 
    descrp4forObj(i,13) = descriptorObjDedo13{i,1}(4,1); 
    descrp4forObj(i,14) = descriptorObjDedo14{i,1}(4,1); 
    descrp4forObj(i,15) = descriptorObjDedo15{i,1}(4,1); 
    descrp4forObj(i,16) = descriptorObjDedo16{i,1}(4,1); 
    descrp4forObj(i,17) = descriptorObjDedo17{i,1}(4,1); 
    descrp4forObj(i,18) = descriptorObjDedo18{i,1}(4,1); 
    descrp4forObj(i,19) = descriptorObjDedo19{i,1}(4,1); 
    descrp4forObj(i,20) = descriptorObjDedo20{i,1}(4,1);    
    descrp4forObj(i,21) = descriptorObjDedo21{i,1}(4,1); 
    descrp4forObj(i,22) = descriptorObjDedo22{i,1}(4,1); 
    descrp4forObj(i,23) = descriptorObjDedo23{i,1}(4,1); 
    descrp4forObj(i,24) = descriptorObjDedo24{i,1}(4,1); 
    descrp4forObj(i,25) = descriptorObjDedo25{i,1}(4,1); 
    descrp4forObj(i,26) = descriptorObjDedo26{i,1}(4,1); 
    descrp4forObj(i,27) = descriptorObjDedo27{i,1}(4,1); 
    descrp4forObj(i,28) = descriptorObjDedo28{i,1}(4,1); 
    descrp4forObj(i,29) = descriptorObjDedo29{i,1}(4,1); 
    descrp4forObj(i,30) = descriptorObjDedo30{i,1}(4,1);    
    descrp4forObj(i,31) = descriptorObjDedo31{i,1}(4,1); 
    descrp4forObj(i,32) = descriptorObjDedo32{i,1}(4,1); 
    descrp4forObj(i,33) = descriptorObjDedo33{i,1}(4,1); 
    descrp4forObj(i,34) = descriptorObjDedo34{i,1}(4,1); 
    descrp4forObj(i,35) = descriptorObjDedo35{i,1}(4,1); 
    descrp4forObj(i,36) = descriptorObjDedo36{i,1}(4,1); 
    descrp4forObj(i,37) = descriptorObjDedo37{i,1}(4,1); 
    descrp4forObj(i,38) = descriptorObjDedo38{i,1}(4,1); 
    descrp4forObj(i,39) = descriptorObjDedo39{i,1}(4,1); 
    descrp4forObj(i,40) = descriptorObjDedo40{i,1}(4,1); 
    descrp4forObj(i,41) = descriptorObjDedo41{i,1}(4,1); 
    descrp4forObj(i,42) = descriptorObjDedo42{i,1}(4,1); 
    descrp4forObj(i,43) = descriptorObjDedo43{i,1}(4,1); 
end
boxchart(descrp4forObj);
sgtitle('Descriptor4 (longitud) para cada objeto -- DEDO');

% PALMA
figure;
descrp4forObj = zeros(43,4);
for i = 1:nIteraciones
%     stringNumeros{i,1} = num2str(numerosArray(1,i));
%     strcat('descriptorObjPalma',stringNumeros{i,1})
    descrp4forObj(i,1) = descriptorObjPalma1{i,1}(4,1); 
    descrp4forObj(i,2) = descriptorObjPalma2{i,1}(4,1); 
    descrp4forObj(i,3) = descriptorObjPalma3{i,1}(4,1); 
    descrp4forObj(i,4) = descriptorObjPalma4{i,1}(4,1); 
    descrp4forObj(i,5) = descriptorObjPalma5{i,1}(4,1); 
    descrp4forObj(i,6) = descriptorObjPalma6{i,1}(4,1); 
%     descrp4forObj(i,7) = descriptorObjPalma7{i,1}(4,1); 
    descrp4forObj(i,8) = descriptorObjPalma8{i,1}(4,1); 
    descrp4forObj(i,9) = descriptorObjPalma9{i,1}(4,1); 
    descrp4forObj(i,10) = descriptorObjPalma10{i,1}(4,1);     
    descrp4forObj(i,11) = descriptorObjPalma11{i,1}(4,1); 
    descrp4forObj(i,12) = descriptorObjPalma12{i,1}(4,1); 
    descrp4forObj(i,13) = descriptorObjPalma13{i,1}(4,1); 
    descrp4forObj(i,14) = descriptorObjPalma14{i,1}(4,1); 
    descrp4forObj(i,15) = descriptorObjPalma15{i,1}(4,1); 
    descrp4forObj(i,16) = descriptorObjPalma16{i,1}(4,1); 
    descrp4forObj(i,17) = descriptorObjPalma17{i,1}(4,1); 
    descrp4forObj(i,18) = descriptorObjPalma18{i,1}(4,1); 
    descrp4forObj(i,19) = descriptorObjPalma19{i,1}(4,1); 
    descrp4forObj(i,20) = descriptorObjPalma20{i,1}(4,1);    
    descrp4forObj(i,21) = descriptorObjPalma21{i,1}(4,1); 
    descrp4forObj(i,22) = descriptorObjPalma22{i,1}(4,1); 
    descrp4forObj(i,23) = descriptorObjPalma23{i,1}(4,1); 
    descrp4forObj(i,24) = descriptorObjPalma24{i,1}(4,1); 
    descrp4forObj(i,25) = descriptorObjPalma25{i,1}(4,1); 
    descrp4forObj(i,26) = descriptorObjPalma26{i,1}(4,1); 
    descrp4forObj(i,27) = descriptorObjPalma27{i,1}(4,1); 
    descrp4forObj(i,28) = descriptorObjPalma28{i,1}(4,1); 
    descrp4forObj(i,29) = descriptorObjPalma29{i,1}(4,1); 
    descrp4forObj(i,30) = descriptorObjPalma30{i,1}(4,1);    
    descrp4forObj(i,31) = descriptorObjPalma31{i,1}(4,1); 
    descrp4forObj(i,32) = descriptorObjPalma32{i,1}(4,1); 
    descrp4forObj(i,33) = descriptorObjPalma33{i,1}(4,1); 
    descrp4forObj(i,34) = descriptorObjPalma34{i,1}(4,1); 
    descrp4forObj(i,35) = descriptorObjPalma35{i,1}(4,1); 
    descrp4forObj(i,36) = descriptorObjPalma36{i,1}(4,1); 
    descrp4forObj(i,37) = descriptorObjPalma37{i,1}(4,1); 
    descrp4forObj(i,38) = descriptorObjPalma38{i,1}(4,1); 
    descrp4forObj(i,39) = descriptorObjPalma39{i,1}(4,1); 
    descrp4forObj(i,40) = descriptorObjPalma40{i,1}(4,1); 
    descrp4forObj(i,41) = descriptorObjPalma41{i,1}(4,1); 
    descrp4forObj(i,42) = descriptorObjPalma42{i,1}(4,1); 
    descrp4forObj(i,43) = descriptorObjPalma43{i,1}(4,1); 
end
boxchart(descrp4forObj);
sgtitle('Descriptor4 (longitud) para cada objeto -- Palma');


%% Salvamos los descriptorObjDedoX y descriptorObjPalmaX
% DEDO
save('descriptorObjDedo1','descriptorObjDedo1');
save('descriptorObjDedo2','descriptorObjDedo2');
save('descriptorObjDedo3','descriptorObjDedo3');
save('descriptorObjDedo4','descriptorObjDedo4');
save('descriptorObjDedo5','descriptorObjDedo5');
save('descriptorObjDedo6','descriptorObjDedo6');
% save('descriptorObjDedo7','descriptorObjDedo7'); % (ESFERA VERDE BLANDA)
save('descriptorObjDedo8','descriptorObjDedo8');
save('descriptorObjDedo9','descriptorObjDedo9');
save('descriptorObjDedo10','descriptorObjDedo10');
save('descriptorObjDedo11','descriptorObjDedo11');
save('descriptorObjDedo12','descriptorObjDedo12');
save('descriptorObjDedo13','descriptorObjDedo13');
save('descriptorObjDedo14','descriptorObjDedo14');
save('descriptorObjDedo15','descriptorObjDedo15');
save('descriptorObjDedo16','descriptorObjDedo16');
save('descriptorObjDedo17','descriptorObjDedo17');
save('descriptorObjDedo18','descriptorObjDedo18');
save('descriptorObjDedo19','descriptorObjDedo19');
save('descriptorObjDedo20','descriptorObjDedo20');
save('descriptorObjDedo21','descriptorObjDedo21');
save('descriptorObjDedo22','descriptorObjDedo22');
save('descriptorObjDedo23','descriptorObjDedo23');
save('descriptorObjDedo24','descriptorObjDedo24');
save('descriptorObjDedo25','descriptorObjDedo25');
save('descriptorObjDedo26','descriptorObjDedo26');
save('descriptorObjDedo27','descriptorObjDedo27');
save('descriptorObjDedo28','descriptorObjDedo28');
save('descriptorObjDedo29','descriptorObjDedo29');
save('descriptorObjDedo30','descriptorObjDedo30');
save('descriptorObjDedo31','descriptorObjDedo31');
save('descriptorObjDedo32','descriptorObjDedo32');
save('descriptorObjDedo33','descriptorObjDedo33');
save('descriptorObjDedo34','descriptorObjDedo34');
save('descriptorObjDedo35','descriptorObjDedo35');
save('descriptorObjDedo36','descriptorObjDedo36');
save('descriptorObjDedo37','descriptorObjDedo37');
save('descriptorObjDedo38','descriptorObjDedo38');
save('descriptorObjDedo39','descriptorObjDedo39');
save('descriptorObjDedo40','descriptorObjDedo40');
save('descriptorObjDedo41','descriptorObjDedo41');
save('descriptorObjDedo42','descriptorObjDedo42');
save('descriptorObjDedo43','descriptorObjDedo43');

% PALMA
save('descriptorObjPalma1','descriptorObjPalma1');
save('descriptorObjPalma2','descriptorObjPalma2');
save('descriptorObjPalma3','descriptorObjPalma3');
save('descriptorObjPalma4','descriptorObjPalma4');
save('descriptorObjPalma5','descriptorObjPalma5');
save('descriptorObjPalma6','descriptorObjPalma6');
% save('descriptorObjPalma7','descriptorObjPalma7'); % (ESFERA VERDE BLANDA)
save('descriptorObjPalma8','descriptorObjPalma8');
save('descriptorObjPalma9','descriptorObjPalma9');
save('descriptorObjPalma10','descriptorObjPalma10');
save('descriptorObjPalma11','descriptorObjPalma11');
save('descriptorObjPalma12','descriptorObjPalma12');
save('descriptorObjPalma13','descriptorObjPalma13');
save('descriptorObjPalma14','descriptorObjPalma14');
save('descriptorObjPalma15','descriptorObjPalma15');
save('descriptorObjPalma16','descriptorObjPalma16');
save('descriptorObjPalma17','descriptorObjPalma17');
save('descriptorObjPalma18','descriptorObjPalma18');
save('descriptorObjPalma19','descriptorObjPalma19');
save('descriptorObjPalma20','descriptorObjPalma20');
save('descriptorObjPalma21','descriptorObjPalma21');
save('descriptorObjPalma22','descriptorObjPalma22');
save('descriptorObjPalma23','descriptorObjPalma23');
save('descriptorObjPalma24','descriptorObjPalma24');
save('descriptorObjPalma25','descriptorObjPalma25');
save('descriptorObjPalma26','descriptorObjPalma26');
save('descriptorObjPalma27','descriptorObjPalma27');
save('descriptorObjPalma28','descriptorObjPalma28');
save('descriptorObjPalma29','descriptorObjPalma29');
save('descriptorObjPalma30','descriptorObjPalma30');
save('descriptorObjPalma31','descriptorObjPalma31');
save('descriptorObjPalma32','descriptorObjPalma32');
save('descriptorObjPalma33','descriptorObjPalma33');
save('descriptorObjPalma34','descriptorObjPalma34');
save('descriptorObjPalma35','descriptorObjPalma35');
save('descriptorObjPalma36','descriptorObjPalma36');
save('descriptorObjPalma37','descriptorObjPalma37');
save('descriptorObjPalma38','descriptorObjPalma38');
save('descriptorObjPalma39','descriptorObjPalma39');
save('descriptorObjPalma40','descriptorObjPalma40');
save('descriptorObjPalma41','descriptorObjPalma41');
save('descriptorObjPalma42','descriptorObjPalma42');
save('descriptorObjPalma43','descriptorObjPalma43');

%% Representamos en un subplot los momentos de DEDO2
figure;
subplot(5,9,1);
plot(momentosDEDO{1,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespAguacate');
subplot(5,9,2);
plot(momentosDEDO{2,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespBerenjena');
subplot(5,9,3);
plot(momentosDEDO{3,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespCiruela');
subplot(5,9,4);
plot(momentosDEDO{4,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespCuboSINO');
subplot(5,9,5);
plot(momentosDEDO{5,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespCuboVertical');
subplot(5,9,6);
plot(momentosDEDO{6,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespEsferaMoradita');
subplot(5,9,7);
plot(momentosDEDO{7,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespEsferaVerdeBlanda');
subplot(5,9,8);
plot(momentosDEDO{8,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespEsferaVerdeDura');
subplot(5,9,9);
plot(momentosDEDO{9,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespGelHidroalcoholico');
subplot(5,9,10);
plot(momentosDEDO{10,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespKiwi');
subplot(5,9,11);
plot(momentosDEDO{11,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespLechuga');
subplot(5,9,12);
plot(momentosDEDO{12,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespLimonMaduro');
subplot(5,9,13);
plot(momentosDEDO{13,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespLimonVerde');
subplot(5,9,14);
plot(momentosDEDO{14,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespMandarina');
subplot(5,9,15);
plot(momentosDEDO{15,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespMandarinaPeq');
subplot(5,9,16);
plot(momentosDEDO{16,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespNectarinaPodrida');
subplot(5,9,17);
plot(momentosDEDO{17,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideAzulAbajo');
subplot(5,9,18);
plot(momentosDEDO{18,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideAzulArriba');
subplot(5,9,19);
plot(momentosDEDO{19,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideAzulHorizontal');
subplot(5,9,20);
plot(momentosDEDO{20,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideMoradoAbajo');
subplot(5,9,21);
plot(momentosDEDO{21,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideMoradoArriba');
subplot(5,9,22);
plot(momentosDEDO{22,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideMoradoHorizontal');
subplot(5,9,23);
plot(momentosDEDO{23,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideNaranjaAbajo');
subplot(5,9,24);
plot(momentosDEDO{24,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideNaranjaArriba');
subplot(5,9,25);
plot(momentosDEDO{25,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideNaranjaHorizontal');
subplot(5,9,26);
plot(momentosDEDO{26,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideVerdeAbajo');
subplot(5,9,27);
plot(momentosDEDO{27,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideVerdeHaciaArriba');
subplot(5,9,28);
plot(momentosDEDO{28,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespOvoideVerdeHorizontal');
subplot(5,9,29);
plot(momentosDEDO{29,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespPatata');
subplot(5,9,30);
plot(momentosDEDO{30,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespPelotaPadel');
subplot(5,9,31);
plot(momentosDEDO{31,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespPera');
subplot(5,9,32);
plot(momentosDEDO{32,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespPiramideAbajo');
subplot(5,9,33);
plot(momentosDEDO{33,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespPiramideArriba');
subplot(5,9,34);
plot(momentosDEDO{34,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespPlatano');
subplot(5,9,35);
plot(momentosDEDO{35,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespPlatanoMaduro');
subplot(5,9,36);
plot(momentosDEDO{36,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespPlatanoPodrido');
subplot(5,9,37);
plot(momentosDEDO{37,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespTomate');
subplot(5,9,38);
plot(momentosDEDO{38,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespToroideHorizontal');
subplot(5,9,39);
plot(momentosDEDO{39,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespToroideVertical');
subplot(5,9,40);
plot(momentosDEDO{40,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespTrianguloAbajo');
subplot(5,9,41);
plot(momentosDEDO{41,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespTrianguloArriba');
subplot(5,9,42);
plot(momentosDEDO{42,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespTrianguloHorizontal');
subplot(5,9,43);
plot(momentosDEDO{43,1});
legend('M00','M10','M01','M20','M11','M02');
title('dedoDespZanahoria');

%% Representamos en un subplot los momentos de PALMA calculados de nuevo con Matlab
figure;
subplot(5,9,1);
plot(momentosPALMA{1,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespAguacate');
subplot(5,9,2);
plot(momentosPALMA{2,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespBerenjena');
subplot(5,9,3);
plot(momentosPALMA{3,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespCiruela');
subplot(5,9,4);
plot(momentosPALMA{4,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespCuboSINO');
subplot(5,9,5);
plot(momentosPALMA{5,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespCuboVertical');
subplot(5,9,6);
plot(momentosPALMA{6,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespEsferaMoradita');
subplot(5,9,7);
plot(momentosPALMA{7,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespEsferaVerdeBlanda');
subplot(5,9,8);
plot(momentosPALMA{8,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespEsferaVerdeDura');
subplot(5,9,9);
plot(momentosPALMA{9,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespGelHidroalcoholico');
subplot(5,9,10);
plot(momentosPALMA{10,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespKiwi');
subplot(5,9,11);
plot(momentosPALMA{11,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespLechuga');
subplot(5,9,12);
plot(momentosPALMA{12,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespLimonMaduro');
subplot(5,9,13);
plot(momentosPALMA{13,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespLimonVerde');
subplot(5,9,14);
plot(momentosPALMA{14,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespMandarina');
subplot(5,9,15);
plot(momentosPALMA{15,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespMandarinaPeq');
subplot(5,9,16);
plot(momentosPALMA{16,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespNectarinaPodrida');
subplot(5,9,17);
plot(momentosPALMA{17,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideAzulAbajo');
subplot(5,9,18);
plot(momentosPALMA{18,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideAzulArriba');
subplot(5,9,19);
plot(momentosPALMA{19,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideAzulHorizontal');
subplot(5,9,20);
plot(momentosPALMA{20,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideMoradoAbajo');
subplot(5,9,21);
plot(momentosPALMA{21,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideMoradoArriba');
subplot(5,9,22);
plot(momentosPALMA{22,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideMoradoHorizontal');
subplot(5,9,23);
plot(momentosPALMA{23,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideNaranjaAbajo');
subplot(5,9,24);
plot(momentosPALMA{24,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideNaranjaArriba');
subplot(5,9,25);
plot(momentosPALMA{25,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideNaranjaHorizontal');
subplot(5,9,26);
plot(momentosPALMA{26,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideVerdeAbajo');
subplot(5,9,27);
plot(momentosPALMA{27,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideVerdeHaciaArriba');
subplot(5,9,28);
plot(momentosPALMA{28,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespOvoideVerdeHorizontal');
subplot(5,9,29);
plot(momentosPALMA{29,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespPatata');
subplot(5,9,30);
plot(momentosPALMA{30,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespPelotaPadel');
subplot(5,9,31);
plot(momentosPALMA{31,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespPera');
subplot(5,9,32);
plot(momentosPALMA{32,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespPiramideAbajo');
subplot(5,9,33);
plot(momentosPALMA{33,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespPiramideArriba');
subplot(5,9,34);
plot(momentosPALMA{34,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespPlatano');
subplot(5,9,35);
plot(momentosPALMA{35,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespPlatanoMaduro');
subplot(5,9,36);
plot(momentosPALMA{36,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespPlatanoPodrido');
subplot(5,9,37);
plot(momentosPALMA{37,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespTomate');
subplot(5,9,38);
plot(momentosPALMA{38,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespToroideHorizontal');
subplot(5,9,39);
plot(momentosPALMA{39,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespToroideVertical');
subplot(5,9,40);
plot(momentosPALMA{40,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespTrianguloAbajo');
subplot(5,9,41);
plot(momentosPALMA{41,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespTrianguloArriba');
subplot(5,9,42);
plot(momentosPALMA{42,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespTrianguloHorizontal');
subplot(5,9,43);
plot(momentosPALMA{43,1});
legend('M00','M10','M01','M20','M11','M02');
title('palmaDespZanahoria');



























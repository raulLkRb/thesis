%% Funcion que hace la FFT de un array de entrada
function [FFT_OUT] = fftExecuteInfinitoPrecision(input_raw,M)
    
    % Hacemos la fft de estos datos
    output= fft(input_raw, M);

    % Hacemos el valor absoluto de output para poder trabajar mejor y lo ponemos en un vector columna
    output_data = abs(output)';

    % Salida
    output_data(1,1) = 2000;
    FFT_OUT = output_data;

end
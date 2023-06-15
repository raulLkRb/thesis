%% Funcion que hace la FFT de un array de entrada
function [FFT_OUT] = fftExecute(input_raw,M)

    % Generics for this test
    generics.C_NFFT_MAX = log2(M);                  % log2(MAX_TRANSFORM_LENGTH) 
    generics.C_ARCH = 3;                            % Architecture (Pipelined, Streaming I/O)
    generics.C_HAS_NFFT = 0;                        % Run time configurable transform length: 0 (no)
    generics.C_USE_FLT_PT = 0;                      % Core interface: 0 (fixed point)
    generics.C_INPUT_WIDTH = 16;                    % Input data width: Must be 32 if C_USE_FLT_PT = 1
    generics.C_TWIDDLE_WIDTH = 16;                  % Phase factor width: Must be 24 or 25 if C_USE_FLT_PT = 1
    generics.C_HAS_SCALING = 1;                     % Type os scaling. Set to 0 if C_USE_FLT_PT = 1
    generics.C_HAS_BFP = 0;                         % Type of scaling if C_HAS_SCALING = 1. Set to 0 if C_USE_FLT_PT = 1
    generics.C_HAS_ROUNDING = 0;                    % Type of rounding. Set to 0 if C_USE_FLT_PT = 1

    channels = 1;

    samples = 2^generics.C_NFFT_MAX;

    % Set point size for this transform
    nfft = generics.C_NFFT_MAX;
    
    % Set up scaling schedule: scaling_sch[1] is the scaling for the first stage
    % Scaling schedule to 1/N: 
    %    2 in each stage for Radix-4/Pipelined, Streaming I/O
    %    1 in each stage for Radix-2/Radix-2 Lite
    if generics.C_ARCH == 1 || generics.C_ARCH == 3
        scaling_sch = ones(1,floor(nfft/2)) * 2;
    if mod(nfft,2) == 1
        scaling_sch = [scaling_sch 1];
    end
    else
        scaling_sch = ones(1,nfft);
    end

    % Set FFT (1) or IFFT (0)
    direction = 1;

    % Printf a message
    if channels > 1
        fprintf('Running the MEX function for channel %d...\n',channel)
    else
        fprintf('Running the MEX function...\n')      
    end

    % Cuantizamos
    q = quantizer('fixed', 'convergent', 'saturate', 'Format', [generics.C_INPUT_WIDTH, generics.C_INPUT_WIDTH-1]);

    maximo = max(input_raw);
    if(maximo == 0)
        input = zeros(1,length(input_raw));
    else
        input_raw_aux = round(input_raw./maximo,1);
        input = quantize(q,input_raw_aux);
    end
    
    % Hacemos la fft de estos datos
    [output, blkexp, overflow] = xfft_v9_0_bitacc_mex(generics, nfft, input, scaling_sch, direction);

    % Hacemos el valor absoluto de output para poder trabajar mejor y lo ponemos en un vector columna
    output_data = abs(output)'.*8192;

    % Salida
    output_data(1,1) = 2000;
    FFT_OUT = output_data;

end
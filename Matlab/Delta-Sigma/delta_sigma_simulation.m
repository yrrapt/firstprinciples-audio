clear all

%% set up the system parameters
fs_base = 44.1e3;
os = 256;
fs_os = fs_base * os;

%% set up the simulation parameters
N = 2^28;
f = 1e3;
no_bits = 2;
no_levels = 2^(no_bits-1);

%% create the input signal
n = 1:N;
x = sin(2*pi*f.*n/fs_os)+1;

%% perform the delta sigma conversion in a loop
sigma_sum = 0;
quant_out = zeros(1,N);

for n = 2:N
        
    % create the filter output
    sigma_sum = sigma_sum + x(n) - quant_out(n-1);
    
    % quantise the signal
    quant_out(n) = floor(no_levels * sigma_sum)/no_levels;
    
end

% plot the frequency response
Y = fft(quant_out,N)/N;
f = fs_os/2*linspace(0,1,N/2+1);
figure, plot(f,20*log10(2*abs(Y(1:N/2+1))/(2*max(abs(Y)))))
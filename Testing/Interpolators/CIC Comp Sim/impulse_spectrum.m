imp = importdata('output_ciccomp.txt');
L = length(imp);
Fs = 8*1*44100;

% plot the impulse response in time domain
t = (1:L)/Fs;
plot(t,imp);
xlabel('time (s)');
ylabel('amplitude (dB)');
title('Impulse response of FIR interpolators');

% plot the frequency response
NFFT = 2^nextpow2(L); % Next power of 2 from length of y
Y = fft(imp,NFFT)/L;
f = Fs/2*linspace(0,1,NFFT/2+1);
figure, plot(f,20*log10(2*abs(Y(1:NFFT/2+1))/(2*max(abs(Y)))))
title('Single-Sided Amplitude Spectrum of y(t)')
xlabel('Frequency (Hz)')
ylabel('|Y(f)|')
ylim([-180 10])
grid on

% Fs = sampling frequency
[a5_data, a5_Fs, a5_nBits,a5_ChunkData] = aiffread('Piano notes/Piano.mf.A5.aiff');
a5_data = im2double(a5_data);

a5_fft = fft(a5_data);

% creates time vector
a5_t = linspace(0, length(a5_data)/a5_Fs, length(a5_data));
%0 = starting time
%length(a5_data)/a5_Fs = ending time
%length(a5_data) = number of samples in a5 Data

plot(a5_t, a5_data)

%Nfft = length of fft
Nfft = 1024;
%creates the frequency vector 
a5_f = linspace(0, a5_Fs, Nfft);
% 0 = starting frequency
% Fs = ending frequency
% Nfft = length of the frequency vector

a5_G = abs(fft(a5_data, Nfft));
% G = the fft of the sample data in 1024 points

figure; plot(a5_f(1:Nfft/2), a5_G(1:Nfft/2));

%%
clc
%[a5_Pxx, a5_fpx] = periodogram(a5_fft, [], [], a5_Fs);
%plot(a5_fpx, a5_Pxx);

a5_A = findpeaks(a5_Pxx(:, 1), 'NPEAKS', 5)



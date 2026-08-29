clc;
clear;
close all;

%% 1. Parameters

Am = 1;          % Message signal amplitude
Ac = 2;          % Carrier signal amplitude

fm = 5;          % Message frequency (Hz)
fc = 50;         % Carrier frequency (Hz)

mu = 0.5;        % Modulation index

fs = 1000;       % Sampling frequency (Hz)
t = 0:1/fs:1;    % Time vector


%% 2. Message Signal

m = Am * cos(2*pi*fm*t);


%% 3. Carrier Signal

c = Ac * cos(2*pi*fc*t);


%% 4. AM Modulated Signal

s = Ac * (1 + mu*m) .* cos(2*pi*fc*t);


%% 5. Demodulation

% Envelope detection

demodulated = abs(hilbert(s));

% Remove DC component and scale
demodulated = (demodulated - mean(demodulated)) / (Ac*mu);


%% 6. Plot the Signals

figure;

subplot(4,1,1);
plot(t,m,'LineWidth',1.2);
grid on;
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');


subplot(4,1,2);
plot(t,c,'LineWidth',1.2);
grid on;
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');


subplot(4,1,3);
plot(t,s,'LineWidth',1.2);
grid on;
title('AM Modulated Signal');
xlabel('Time (s)');
ylabel('Amplitude');


subplot(4,1,4);
plot(t,demodulated,'LineWidth',1.2);
grid on;
title('Recovered Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');

sgtitle('AM Modulation and Demodulation using MATLAB');
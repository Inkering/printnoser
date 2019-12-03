%% 3D Printer Data Exploration
%% Load Data

clear;
load 'houseprint';
%% Test Log Data

stackedplot(Acceleration)
%%
a = timetable2table(Acceleration)
accelData = [a.X a.Y a.Z];
x = accelData(:,1);
N = length(x);
Fs = 100;
f = linspace(-Fs/2, Fs/2 - Fs/N, N) + Fs/(2*N)*mod(N, 2);
FA = fft(x);
plot(f,fftshift(abs(x)),'b');
xlim([-1 1])
function [normoutput, xoutput, youtput, zoutput] = printanalysis(data)
% function documentation

% get the input signals we desie for the fft
x1 = vecnorm(data);
x2 = data(1,:);
x3 = data(2,:);
x4 = data(3,:);

% sample rate
Fs = 100;

% group of inputs
inputs = [x1' x2' x3' x4']

% remove the data mean
% one result is that gravity gets removed and the data gets centered
inputs = inputs - mean(inputs, 1);

% calculate sample size
N = size(inputs);
N = N(1);

% calculate frequency range based on sample rate and data size
%f = linspace(-Fs/2, Fs/2 - Fs/N, N) + Fs/(2*N)*mod(N, 2);

% perform ffts
F1 = fft(inputs(:,1));
F2 = fft(inputs(:,2));
F3 = fft(inputs(:,3));
F4 = fft(inputs(:,4));

% assign to function outputs
normoutput = F1;
xoutput = F2;
youtput = F3;
zoutput = F4;

end
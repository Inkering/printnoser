function [meanedoutput xoutput youtput zoutput] = printanalysis(data)
% function documentation

% get the input signals we desie for the fft
x1 = vecnorm(accelData);
x2 = accelData(1,:);
x3 = accelData(2,:);
x4 = accelData(3,:);

inputs = [x1 x2 x3 x4];

inputs = inputs - mean(inputs, 1);

N = size(x);
N = N(1)

end
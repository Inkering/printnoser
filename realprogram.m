function status = realprogram
% 3D printing analysis script
% determines whether a print is likely to have succeeded based on
% accelerometer data of a phone placed on the print head.

data = load('data/rectangle with infill 1.mat');

% function for parsing acelerometer data into sufficient matrix
accelData = dataparser(data.Acceleration);


% function for performing fft, generating plots for logging, and outputting
% fft data
[whole, x, y, z] = printanalysis(accelData);

% function for classification of data as fail/not fail, optionally with a
% confidence rating
status = 1;
end
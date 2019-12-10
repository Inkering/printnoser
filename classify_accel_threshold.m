function [success, level] = classify_accel_threshold(data, threshold)
% Uses a basic outlier-reducing threshold to diagnose print fails

if nargin < 2 % if not passed a threshold
    threshold = 15; % set default threshold
end

largest = maxk(data, 3); % get 10 largest FFT output values
meanHighAccel = mean(largest); % take their mean
level = meanHighAccel;

if meanHighAccel > threshold
    success = false;
else
    success = true;
end

end
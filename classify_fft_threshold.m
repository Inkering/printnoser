function [success, level] = classify_fft_threshold(data, threshold)
% Uses a basic outlier-reducing threshold to diagnose print fails

if nargin < 2 % if not passed a threshold
    threshold = 0.02; % set default threshold
end

largest = maxk(data, 3) % get 10 largest FFT output values
meanHighPower = mean(largest); % take their mean
level = meanHighPower;

if meanHighPower > threshold
    success = false
else
    success = true
end

end
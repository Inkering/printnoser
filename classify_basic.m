function [success, level] = classify_basic(data, threshold)
% function documentation

if nargin < 2
    threshold = 1500;
end
disp(threshold)

largest = maxk(data, 10)
meanHighPower = mean(largest);


success = true;
level = meanHighPower;
end
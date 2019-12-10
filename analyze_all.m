clear;

datasets = dir('data/*.mat');
numfiles = length(datasets);
mydata = cell(1, numfiles);

% Import Data
for k = 1:numfiles
  mydata{k} = importdata(strcat('data/',datasets(k).name));
end

% Run simple analysis on all
for k = 1:length(mydata)
    sample = mydata(k);
    sample{1}.Acceleration
end
clear all
close all

addpath(genpath('.'));
datasets = {'foodpics_combined'};

imgdir  = '/home/anis/Documents/foodpics_combined/';

path = imgdir;  
fileExt = '*.jpg';  
files = dir(fullfile(path,fileExt));  

len = size(files,1); 

lstOne = cell(1,len);

for i = 1:len
    lstOne{1,i} = strcat(path,files(i).name);
end

train_lists = cell(1,1);
train_lists{1} = lstOne;

lstTwo = cell(1,1);
lstTwo{1,1} = strcat(path,files(1).name);
test_lists = cell(1,1);
test_lists{1} = lstTwo;

%feature = 'color';
%feature = 'gist';
%feature = 'hog2x2';
%feature = 'hog3x3';
%feature = 'lbp';
%feature = 'sift';
feature = 'ssim';

c = conf();

datasets_feature(datasets, train_lists, test_lists, feature, c);
train_features = load_feature(datasets{1}, feature, 'train', c);

csvwrite(['foodpics_combined_',feature,'.csv'],train_features);



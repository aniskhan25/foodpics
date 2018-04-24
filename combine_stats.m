data1 = csvread('foodpics_combined_color.csv');
data2 = csvread('foodpics_combined_gist.csv');
data3 = csvread('foodpics_combined_hog2x2.csv');
data4 = csvread('foodpics_combined_hog3x3.csv');
data5 = csvread('foodpics_combined_lbp.csv');
data6 = csvread('foodpics_combined_sift.csv');

res = [];

tmp = data1; mu = mean(tmp,2); st =  std(tmp')'; res = [res,[mu,st]];
tmp = data2; mu = mean(tmp,2); st =  std(tmp')'; res = [res,[mu,st]];
tmp = data3; mu = mean(tmp,2); st =  std(tmp')'; res = [res,[mu,st]];
tmp = data4; mu = mean(tmp,2); st =  std(tmp')'; res = [res,[mu,st]];
tmp = data5; mu = mean(tmp,2); st =  std(tmp')'; res = [res,[mu,st]];
tmp = data6; mu = mean(tmp,2); st =  std(tmp')'; res = [res,[mu,st]];

% Normalize
%mn = repmat(min(res), [size(res,1), 1]);
%mx = repmat(max(res), [size(res,1), 1]);
%res = (res - mn) ./ (mx - mn);

csvwrite('tmp1.csv',res);
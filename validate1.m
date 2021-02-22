clc;
clear all;
close all;

a  =load('database\Training dataset\trainset.mat');
B  =load('database\Testing dataset\trainset.mat');

c1 = a.area_train;
c2 = a.c_train;
c3 = a.stats_train;
Train_Data = [c1 c2 c3];


s1 = B.area_test;
s2 = B.c_test;
s3 = B.stats_test;
sample_Data = [s1 s2 s3];


        
input_dir = 'Database\Testing dataset';



filenames = dir(fullfile(input_dir, '*.jpg'));



images = [];
k=1;
 
for n = 1:length(filenames)

    filename = fullfile(input_dir, filenames(n).name);
    img = imread(filename);
    img = imresize(img,[256,256]);
    
    

end
area_train= area_train1;
 c_train=c_train1;
 stats_train=stats_train1;
 label_train=label_train1
 
c1 = a.area_train;
c2 = a.c_train;
c3 = a.stats_train;
Train_Data = [c1 c2 c3];


s1 = B.area_test;
s2 = B.c_test;
s3 = B.stats_test;
sample_Data = [s1 s2 s3];

group=[1 2 3 4 5 6 7 8 9 10 11  12 13 14 15];
Mdl = fitcknn(Train_Data, group);
class2=predict(sample_Data,Mdl);




   

 
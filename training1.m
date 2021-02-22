
% function[output]=signature(img)
input_dir = 'database\Training dataset\'

filenames = dir(fullfile(input_dir, '*.jpg'));



length(filenames)

images = [];

k=1;
 
for n = 1:length(filenames)

    filename = fullfile(input_dir, filenames(n).name);
    img = imread(filename);
    img = imresize(img,[256,256]);
    img1=im2bw(img)
    figure, imshow(img1);title('Selected Image');

   
   area=bwarea(img1);
   
   C=bwperim(img1,8);
   label=bwlabel(img1);
   stats=regionprops(label,double(img1),'MajorAxisLength','MinorAxisLength','eccentricity'); 
   

   
    area_train1(1,256:768)=area;
    c_train1=C;
    stats_train1=stats;
label_train1(1,1:256)=1;
   
  
end
area_train= area_train1;
c_train=c_train1;
stats_train=stats_train1;
label_train=label_train1;

save('database\Training dataset\trainset.mat','area_train','c_train','stats_train','label_train');

    
   

        


    


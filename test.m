input_dir = 'database\Testing dataset\'



filenames = dir(fullfile(input_dir, '*.jpg'));



images = [];
k=1;
 
for n = 1:length(filenames)

    filename = fullfile(input_dir, filenames(n).name);
    img= imread(filename);
    img = imresize(img,[256,256]);
    
    img1=im2bw(img)
    figure, imshow(img1);title('Selected Image');
   area=bwarea(img1);
   
   C=bwperim(img1,8);
   label=bwlabel(img1);
   stats=regionprops(label,double(img1),'MajorAxisLength','MinorAxisLength','eccentricity'); 

   
    area_test1(k,256:768)=area;
    c_test1=C;
    stats_test1=stats;
    label_test1(k,1:256)=1;
   
   
    

   
   end
area_test= area_test1;
 c_test=c_test1;
 stats_test=stats_test1;
 label_test=label_test1;

save('database\Testing dataset\trainset.mat','area_test','c_test','stats_test','label_test');

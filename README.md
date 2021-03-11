# Classification_of_Fruits_on_the_basis_of_Shape_using_KNN
A program for classification of fruits based on KNN classifier.

It's program for classification purpose, it classify the fruits by shape using KNN in MATLAB.

training1.m - Here all the images are taken from Training directory(which is provided) and it resize the images into 256x256 size and then based on Major Length, Minor Length 
and Ecentricity image area is calculated and this calculated data is saved as trainset.mat along with labels in training folder. This training.mat is further used while validation.

test.m - Here a unknown image is taken and perform same operation like we did in training and create a test.mat and test lables.

validate1.m - The trained and tested data of .mat format is loaded here and based on KNN function (fitcknn) in MATLAB it is tried to aligned/fit into those K no of groups and using predict function the output is predicted.

If your PC's CPU processor is faster then you can add extra images into training and testing dataset.

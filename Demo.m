% -----------------------------------------------------
% Copyright (C)
% Nengyuan Liu <nengyuanliu@outlook.com>
% University of Electronic Science and Technology of China
% -----------------------------------------------------
% a simple demo for our paper
% 
% Thanks primetang for LSD-OpenCV-MATLAB, which can be found at https://github.com/primetang/LSD-OpenCV-MATLAB
% 
% N. Liu, Z. Cui, Z. Cao, Y. Pi and S. Dang, "Airport Detection in Large-Scale SAR Images via Line Segment Grouping and Saliency Analysis," in IEEE Geoscience and Remote Sensing Letters, vol. 15, no. 3, pp. 434-438, March 2018.
%------------------------------------------------------
% 
% 
clear;close all;clc;
addpath('./utils/');

% image
path = '.\images\1.jpg';
img = imread(path);

% parameters
param = makeAiportDetectionParams();

% detection
tic
airports = getAirports(path, param);
toc

% show
figure,imshow(img);hold on; title('airports')
for ii = 1: length(airports)
    rectangle('Position',airports(ii).Box,'EdgeColor','b','LineWidth',2.5); 
end
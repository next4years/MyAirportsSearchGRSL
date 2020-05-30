% -----------------------------------------------------
% Copyright (C)
% Nengyuan Liu <nengyuanliu@outlook.com>
% University of Electronic Science and Technology of China
% -----------------------------------------------------
% a simple demo for our paper
% 
% Thanks primetang for LSD-OpenCV-MATLAB, which can be found at https://github.com/primetang/LSD-OpenCV-MATLAB
% 
% Citation:
%     @article{liu2018airport,
%       title={Airport detection in large-scale SAR images via line segment grouping and saliency analysis},
%       author={Liu, Nengyuan and Cui, Zongyong and Cao, Zongjie and Pi, Yiming and Dang, Sihang},
%       journal={IEEE Geoscience and Remote Sensing Letters},
%       volume={15},
%       number={3},
%       pages={434--438},
%       year={2018},
%       publisher={IEEE}
%     }
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
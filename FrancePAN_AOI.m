close all;
clear;
clc;
%% read in the file from the directory
path = ('Material_AOI/');
imagefilePAN = ('AJpan8.tiff');
imagefilePAN8 = ('pan8.tiff');

pathimage_PAN = fullfile(path,imagefilePAN);
pathimage_PAN8 = fullfile(path,imagefilePAN8);

PAN = imread(pathimage_PAN);
pan8 = imread(pathimage_PAN8);

%% AOI 
% aoi1 = CIR(150:250,100:200,:); % Rural, fields, bushes and pond MS
% the PAN is in this case 4x bigger than the MS

aoi1 = PAN(600:1000,400:800); 
imshow(aoi1); 
% imwrite(aoi1, "aoi1_pan.png");

aoi2 = PAN(3200:3600,4400:5200); 
imshow(aoi2); 
% imwrite(aoi2, "aoi2_pan.png");

aoi3 = PAN(13600:15600,7600:9200); 
imshow(aoi3); 
% imwrite(aoi3, "aoi3_pan.png");

aoi4 = pan8(7600:9200,10800:12000); 
imshow(aoi4); 
% imwrite(aoi4, "aoi4_pan.png");

aoi5 = PAN(6000:7600,10000:12000); 
imshow(aoi5); 
% imwrite(aoi5, "aoi5_pan.png");

aoi6 = PAN(8800:12800,7600:10400); 
imshow(aoi6); 
% imwrite(aoi6, "aoi6_pan.png");

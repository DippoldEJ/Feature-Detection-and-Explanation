close all;
clear;
clc;
%%
path = ('Polygon1_SO24012539-2-01_DS_PHR1B_202404231033373_FR1_PX_E005N43_0118_03298/6979456101/IMG_PHR1B_P_001');
imagefilePAN = ('IMG_PHR1B_P_202404231033373_SEN_6979456101-1_R1C1.JP2');

pathimage_PAN = fullfile(path,imagefilePAN);
PAN16 = imread(pathimage_PAN);


%% from 16 bit to 8 bit 

pan8 = uint8(255*mat2gray(PAN16));

% imwrite(pan8, 'pan8.tiff'); 

%% Contrast adjusted

AJpan8 = imadjust(pan8); 

% imwrite(AJpan8, 'AJpan8.tiff'); 
clc;
clear;
close all;
%% Test Pansharpening of AOI

path = ('Pansharpening/');
imagefilePAN = ('aoi6_pan.tiff');
imagefileRGB = ('aoi10_RGB.tiff');

pathimage_PAN = fullfile(path,imagefilePAN);
pathimage_RGB = fullfile(path,imagefileRGB);

PAN = imread(pathimage_PAN);
RGB = imread(pathimage_RGB);


%% adjust contrast
red = RGB(:,:,1);
green = RGB(:,:,2);
blue = RGB(:,:,3);

red = imadjust(red); 
green = imadjust(green);
blue = imadjust(blue);

% needed for the finale figure
% oRGB = cat(3, red, green, blue);
% oPAN = imadjust(PAN);

RGB = cat(3, red, green, blue);
PAN = imadjust(PAN); 

%% from uint to double precision
RGB = im2double(RGB);   
PAN = im2double(PAN);

% resize RGB to PAN resolution
RGB_up = imresize(RGB,[size(PAN,1) size(PAN,2)]);

R = RGB_up(:,:,1);
G = RGB_up(:,:,2);
B = RGB_up(:,:,3);

sumRGB = R + G + B + eps;

F(:,:,1) = (R ./ sumRGB) .* PAN;
F(:,:,2) = (G ./ sumRGB) .* PAN;
F(:,:,3) = (B ./ sumRGB) .* PAN;

% imshow(F)

%% adjust contrast again
red2 = F(:,:,1);
green2 = F(:,:,2);
blue2 = F(:,:,3);

red2 = imadjust(red2); 
green2 = imadjust(green2);
blue2 = imadjust(blue2);

RGB = cat(3, red2, green2, blue2);

% imwrite(RGB, 'Sharped_RGB.tiff')
%%

% figure
% montage({oRGB, oPAN, RGB})




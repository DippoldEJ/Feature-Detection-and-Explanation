close all;
clear;
clc;
%% read in the file from the directory
path = ('Material_PrePro/');
imagefileNIR = ('NIR8.tiff');
imagefileRed = ('red8.tiff');
imagefileGreen = ('green8.tiff');
imagefileBlue = ('blue8.tiff');

pathimage_NIR = fullfile(path,imagefileNIR);
pathimage_Red = fullfile(path,imagefileRed);
pathimage_Green = fullfile(path,imagefileGreen);
pathimage_Blue = fullfile(path,imagefileBlue);

NIR = imread(pathimage_NIR);
red = imread(pathimage_Red);
green = imread(pathimage_Green);
blue = imread(pathimage_Blue);

%%
% Image adjustment

NIR = imadjust(NIR); 
red = imadjust(red); 
green = imadjust(green); 
blue = imadjust(blue); 

CIR = cat(3, NIR,red,green);
RGB = cat(3,red,green,blue);

%% extracting submatrices
% aoi = img[x1:x2, y1:y2]
% aoi = a x b x 3 u-int8

aoi1 = CIR(150:250,100:200,:); % Rural, fields, bushes and pond
%aoi2 = CIR(2050:2150,4900:5039,:); % Rural and ede of the image
%aoi3 = CIR(2870:3000,2000:2300,:); % building, pathway, street
%aoi4 = CIR(2400:2600,2700:2800,:);  % Rural,
aoi5 = RGB(800:900,1100:1300,:); % building
%aoi6 = CIR(2600:2900,1500:1700,:);
aoi7 = RGB(3400:3900,1900:2300,:); % industrial buildings and streams
aoi8 = CIR(1900:2300,2700:3000,:); % open pit mine
aoi9 = RGB(1500:1900,2500:3000,:); % little harper with water streams

aoi10 = RGB(2200:3200,1900:2600,:); % local airfield
% imshow(aoi10);


%% draw rectangle
% aoi = img[x1:x2, y1:y2]
% aoi = a x b x 3 u-int8
% so that
% Position [ y1, x2, b, a] 

figure
imshow(RGB)

h1 = drawrectangle('Label','      AOI_1','Position',[100,150,101,201],'StripeColor','r');
h2 = drawrectangle('Label','         AOI_2','Position',[1100, 800,201,101],'StripeColor','r');

h3 = drawrectangle('Label','AOI_3','Position',[1900,3400,401,501],'StripeColor','r');
h4 = drawrectangle('Label','AOI_4','Position',[2700,1900,301,401],'StripeColor','r');

h5 = drawrectangle('Label','AOI_5','Position',[2500,1500,501,401],'StripeColor','r');
h6 = drawrectangle('Label','AOI_6','Position',[1900,2200 701,1001],'StripeColor','r');





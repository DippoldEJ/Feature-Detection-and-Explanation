clc;
clear;
close all;
%% Feature detection

path = ('Features/');
imagefile = ('Sharped_RGB.tiff');

pathimage = fullfile(path,imagefile);

img = imread(pathimage);

%% 
Gray = rgb2gray(img);
gray = im2double(Gray);

points = detectFASTFeatures(gray,'minContrast',200/255,'minQuality',150/255);


%%
red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);

pointsRED = detectFASTFeatures(red,'minContrast',200/255,'minQuality',150/255);
pointsGreen = detectFASTFeatures(green,'minContrast',200/255,'minQuality',150/255);
pointsBlue = detectFASTFeatures(blue,'minContrast',200/255,'minQuality',150/255);

%% display

figure;
subplot(1,2,1); imshow(gray); hold on; plot(points.selectStrongest(30)); title('Gray','FontSize',30);

subplot(1,2,2); imshow(img);  hold on;
plot(pointsRED.selectStrongest(10));
plot(pointsGreen.selectStrongest(10));
plot(pointsBlue.selectStrongest(10)); title('RGB','FontSize',30);


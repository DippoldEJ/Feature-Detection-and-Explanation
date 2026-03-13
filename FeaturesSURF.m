clc;
clear;
close all;
%% SURF Feature detection
% reading in the image data

path = ('Features/');
imagefile = ('Sharped_RGB.tiff');

pathimage = fullfile(path,imagefile);

img = imread(pathimage);

%% turn RGB to double precision and gray

Gray = rgb2gray(img);
gray = im2double(Gray);

points = detectSURFFeatures(gray, 'MetricThreshold',10, 'NumOctaves', 3);


%% single band processing als alternative

red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);

pointsRED = detectSURFFeatures(red, 'MetricThreshold',10, 'NumOctaves', 3);
pointsGreen = detectSURFFeatures(green, 'MetricThreshold',10, 'NumOctaves', 3);
pointsBlue = detectSURFFeatures(blue, 'MetricThreshold',10, 'NumOctaves', 3);

%% display both ways as direct comparision

figure;
subplot(1,2,1); imshow(gray); hold on; plot(points.selectStrongest(30)); title('Gray','FontSize',30);

subplot(1,2,2); imshow(img);  hold on;
plot(pointsRED.selectStrongest(10));
plot(pointsGreen.selectStrongest(10));
plot(pointsBlue.selectStrongest(10)); title('RGB','FontSize',30);


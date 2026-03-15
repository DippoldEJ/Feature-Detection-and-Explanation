clc;
clear;
close all;
%% Feature detection

path = ('Features/');
imagefile = ('Sharped_RGB.tiff');

pathimage = fullfile(path,imagefile);

img = imread(pathimage);

%% CASE 1 - Gray

Gray = rgb2gray(img);
gray = im2double(Gray);

%% SURF

pointsSURF = detectSURFFeatures(gray, 'MetricThreshold',10, 'NumOctaves', 3);
SURFLoc = pointsSURF.Location;

%% FAST

pointsFAST = detectFASTFeatures(gray,'minContrast',200/255,'minQuality',150/255);
FASTLoc = pointsFAST.Location;

%% Canny 

CannyImg = edge(gray,'canny');

idx = CannyImg==1; 
numb=sum(idx(:));

[row, col] = size(gray);

%CannyLoc = zeros(numb,2);
CatSingle = zeros(row,col);
idx = zeros(0,2); 

% save the values of Canny 
for i=1:row
    for j=1:col
        
       value1 = CannyImg(i,j);
      
        if value1 == 1
        
        idx = [idx;i j];
           
        end
    end   
end

%%
% FAST, SURF and Canny Points in one vector
points = vertcat(FASTLoc, SURFLoc, idx);

ACCpts = SURFPoints(points);

 imshow(gray); hold on; plot(ACCpts.selectStrongest(30));

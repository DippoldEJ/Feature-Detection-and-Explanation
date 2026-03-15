clc;
clear;
close all;
%% Feature detection

path = ('Features/');
imagefile = ('Sharped_RGB.tiff');

pathimage = fullfile(path,imagefile);

img = imread(pathimage);

%% CASE 2 - single band 

red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);

%% SURF

pointsRedsurf = detectSURFFeatures(red, 'MetricThreshold',10, 'NumOctaves', 3);
pointsGreensurf = detectSURFFeatures(green, 'MetricThreshold',10, 'NumOctaves', 3);
pointsBluesurf = detectSURFFeatures(blue, 'MetricThreshold',10, 'NumOctaves', 3);

SURFLocR = pointsRedsurf.Location;
SURFLocG = pointsGreensurf.Location;
SURFLocB = pointsBluesurf.Location;

%% FAST

pointsRedfast = detectFASTFeatures(red,'minContrast',200/255,'minQuality',150/255);
pointsGreenfast = detectFASTFeatures(green,'minContrast',200/255,'minQuality',150/255);
pointsBluefast = detectFASTFeatures(blue,'minContrast',200/255,'minQuality',150/255);

FASTLocR = pointsRedfast.Location;
FASTLocG = pointsGreenfast .Location;
FASTLocB = pointsBluefast.Location;

%% Canny RED

CannyRed = edge(red,'canny');

idx = CannyRed==1; 
numb=sum(idx(:));

[row, col] = size(red);

idx = zeros(0,2); 

% save the values of Canny 
for i=1:row
    for j=1:col
        
       value1 = CannyRed(i,j);
      
        if value1 == 1
        
        idx = [idx;i j];
           
        end
    end   
end

idxred = idx;
numbRed = numb;

%% Canny Green

CannyGreen = edge(green,'canny');

idx = CannyGreen==1; 
numb=sum(idx(:));

[row, col] = size(green);

idx = zeros(0,2); 

% save the values of Canny 
for i=1:row
    for j=1:col
        
       value1 = CannyGreen(i,j);
      
        if value1 == 1
        
        idx = [idx;i j];
           
        end
    end   
end

idxGreen = idx;
numbGreen = numb;

%% Canny Blue

CannyBlue = edge(blue,'canny');

idx = CannyBlue==1; 
numb=sum(idx(:));

[row, col] = size(blue);

idx = zeros(0,2); 

% save the values of Canny 
for i=1:row
    for j=1:col
        
       value1 = CannyBlue(i,j);
      
        if value1 == 1
        
        idx = [idx;i j];
           
        end
    end   
end

idxBlue = idx;
numbBlue = numb;

%%

points = vertcat(SURFLocR, SURFLocG, SURFLocB, FASTLocR, FASTLocG, FASTLocB, idxred, idxGreen, idxBlue);

ACCpts = SURFPoints(points);

imshow(img); hold on; plot(ACCpts.selectStrongest(30));
 
 
 
 

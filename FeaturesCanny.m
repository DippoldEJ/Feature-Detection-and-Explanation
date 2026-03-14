clc;
clear;
close all;
%% Feature detection

path = ('Features/');
imagefile = ('Sharped_RGB.tiff');

pathimage = fullfile(path,imagefile);

img = imread(pathimage);

%% Canny Edge Detector
Gray = rgb2gray(img);
CannyImg = edge(Gray,'canny');

% imshow("CannyImg");
% output in black and white logicals
% true and false organised as Matrix 

CannyRGB = labeloverlay(Gray,CannyImg);

idx = CannyImg==1; 
outPt=sum(idx(:));

%%

red = img(:,:,1);
green = img(:,:,2);
blue = img(:,:,3);

RedCanny = edge(red,'canny');
GreenCanny = edge(green,'canny');
BlueCanny = edge(blue,'canny');

[row, col] = size(Gray);

CatSingle = zeros(row,col);

for i=1:row
    for j=1:col
        
       value1 = RedCanny(i,j);
       value2 = GreenCanny(i,j);
       value3 = BlueCanny(i,j);
       
        if value1 == 1 || value2 == 1 || value2 == 3 % || or
            
        CatSingle(i,j) = 1;
        
        else 
            
        CatSingle(i,j) = 0;
           
        end
    end   
end

CannySingle = labeloverlay(img,CatSingle);

idx = CatSingle==1; 
outPt2=sum(idx(:));

idx = RedCanny==1; 
outPt3=sum(idx(:));

idx = GreenCanny==1; 
outPt4=sum(idx(:));

idx = BlueCanny==1; 
outPt5=sum(idx(:));
%% display

figure;
subplot(1,2,1); imshow(CannyRGB); title('Gray','FontSize',30);

subplot(1,2,2); imshow(CannySingle); title('RGB','FontSize',30);


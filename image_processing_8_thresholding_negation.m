clc;
clear;
clear all;
close all;

% These codes demonstrate how thresholding and negation operations are performed on images.

I=(double(rgb2gray(imread("dark.jpeg"))))
[h,w]=size(I)
figure,imshow(uint8(I))

% Perform Thresholding
% Thresholding is applied to the image based on the mean value. A binary image is obtained.

T=mean2(I);
for i=1:h
    for j=1:w
        if I(i,j)<T
            I2(i,j)=0;   % Set pixel value to 0 (black) if it is below the threshold
        else
            I2(i,j)=255; % Set pixel value to 255 (white) if it is above or equal to the threshold
        end
    end
end

figure,imshow(uint8(I2))

%****************************************

% Negation
% The operation performed here is inverting the brightness values of the image. 
% The dark areas become light and the light areas become dark in the resulting image.

I3=(double(rgb2gray(imread("x-ray.jpg"))))
[h,w]=size(I3)

I4=255-I3

figure,imshow(uint8(I3)) 
figure,imshow(uint8(I4))

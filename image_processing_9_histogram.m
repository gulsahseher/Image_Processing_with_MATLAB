clc;
clear all;
clear;
close all;

% Histogram represents the frequency of occurrence of each grayscale level ([0, 255]) in the image.
% It provides information about the distribution of pixels in the image.
% It is commonly used in image enhancement.
% Histogram normalization reveals the probabilities of grayscale levels occurring in the image.

I=imread("low-contrast-lena.jpg");
figure,imshow(uint8(I))
[w,h]=size(I);

%% Calculates the histogram of an image by counting the occurrence of each pixel value.

% histog=zeros(1,256);
% 
% for i=1:w
%     for j=1:h
%         histog(I(i,j)+1)=histog(I(i,j)+1)+1; %% Iterate over each pixel in the image and increment the count of the corresponding bin in the histogram vector.
%     end
% end

% Call the 'find_histogram' function for histogram

[hm1]=find_histogram(I);
% [hm1]=imhist(I) %% calculates the histogram of the image
figure, plot(hm1)
figure, bar(hm1)

I2=imadjust(I) % adjusts the contrast of the input image I by rescaling its pixel values and enhancing the image's appearance.
figure,imshow(I2),title("enhancement_image")

[hm2]=find_histogram(I2);
% [hm2]=imhist(I2) %% calculates the histogram of the image
figure, plot(hm2)
figure, bar(hm2)

clc;
clear all;
clear;
close all;

% These codes demonstrate the enhancement of a low-contrast image by applying histogram equalization. 
% the histogram of the image --> the normalized histogram --> the cumulative distribution function --> a lookup table --> mapping pixel values --> the histogram-equalized image 

I=imread("low-contrast-lena.jpg");
[w,h]=size(I);

% Compute and display the histogram

hm1=imhist(I);
figure,bar(hm1),title("imhist")

% Compute and display the normalized histogram (probability density function)

norm_hist=hm1/(w*h);
figure,bar(norm_hist),title("norm_hist-pdf")

% Compute and display the cumulative distribution function

c=zeros(1,256);
c(1)=hm1(1);
for i=2:256
    c(i)=c(i-1)+hm1(i);
end

figure,bar(c),title("-cdf")


% Create the lookup table for histogram equalization

LUT=zeros(1,256);
cdf_min=min(c);

for v=1:256
    LUT(v)=round(255*(c(v)-cdf_min)/(w*h-cdf_min));
end

% Apply histogram equalization to the image

I2=zeros(w,h);
for i=1:w
    for j=1:h
        I2(i,j)=LUT(I(i,j));
    end
end

figure,imshow(uint8(I2)),title("histeq_image")
figure,bar(hm1),title("histeq")

% figure,imshow(uint8(I))
% 
% [hm]=imhist(I)
% figure,bar(hm)
% 
% I2=histeq(I)
% [hm2]=imhist(I2)
% figure,imshow(uint8(I2)),title("histeq_image")
% figure,bar(hm2),title("histeq")

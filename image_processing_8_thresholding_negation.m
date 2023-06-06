clc;
clear;
clear all;
close all;

I=(double(rgb2gray(imread("dark.jpeg"))))
[h,w]=size(I)


figure,imshow(uint8(I))

T=mean2(I);
for i=1:h
    for j=1:w
        if I(i,j)<T
            I2(i,j)=0;
        else
            I2(i,j)=255;
        end
    end
end

figure,imshow(uint8(I2))

I3=(double(rgb2gray(imread("x-ray.jpg"))))
[h,w]=size(I3)

I4=255-I3

figure,imshow(uint8(I3)) 
figure,imshow(uint8(I4))
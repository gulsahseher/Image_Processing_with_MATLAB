clc;
clear all;
clear;
close all;

% This code is an example where an image is processed by shifting or translating it by a certain amount.

I1=imread("C:\Users\GULSAH\Documents\MATLAB\Image Processing\low-contrast-lena.jpg")
figure,imshow(uint8(I1)),title("org")
[h,w]=size(I1);

x=10;
y=10;

% Create a shifted image I2 by adding padding

I2=zeros(h+10,w+10);
I2(y+1:y+h,x+1:x+w)=I1;

figure,imshow(uint8(I2)),title("shifted")

% Shift the image I1 using a loop

x=10;
y=10;
for i=x:w
    for j=y:h
        I3(i,j)=I1(i-x+1,j-y+1);
    end
end

figure,imshow(uint8(I3)),title("shifted")

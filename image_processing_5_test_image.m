clc;
clear;
clear all;
close all;

% This code generates three images. 

% The first image is a binary image with a circular shape. 
% The second image is a gradient image with pixel values increasing from left to right. 
% The third image is the result of applying a mask to the gradient image, where the mask is defined by the circular shape.

w=256;
h=256;
I2=zeros(h,w); % Create a black image of size h x w

x=128; % x-coordinate of the center of the circle
y=128; % y-coordinate of the center of the circle
r=80;  % Radius of the circle

for i=1:w
    for j=1:h
        if (((x-i)^2+(y-j)^2)^1/2<=r^2) % Circle formula
            I1(i,j)=255; % Set pixel value to white if it is inside the circle
        else
            I1(i,j)=0;   % Set pixel value to black if it is outside the circle
        end
    end
end

figure,imshow(uint8(I1)),title("null")

%****************************************

for i=1:w
    for j=1:h
        I2(i,j)=j-1; % Assign pixel value as j-1
    end
end

figure,imshow(uint8(I2)),title("null")

I3=zeros(h,w);

%****************************************

for i=1:w
    for j=1:h
        I3(i,j)=I2(i,j).*(I1(i,j)/255); % Multiply pixel value by the corresponding value in the circle image
    end
end

figure,imshow(uint8(I3)),title("null")

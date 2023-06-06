clc;
clear all;
clear;
close all;

% The code performs various intensity transformations on an image.
% Enhancement refers to the process of improving the quality or features of an image. 
% It involves various techniques to enhance different aspects of an image. 
% Common image enhancement techniques include increasing contrast, adjusting brightness, reducing noise, and enhancing edges.

I=double(imread("Lena-image.jpg"))
figure,imshow(uint8(I)),title("org")
[h,w]=size(I);

% Contrast Adjustment

% If a > 1, the contrast increases.
% If a < 1, the contrast decreases.

a1=0.6;  % Scaling factor for intensity transformation
a2=3;    % Scaling factor for intensity transformation
I2=I*a1;
I3=I*a2; 
figure,imshow(uint8(I2)),title("org*a1")
figure,imshow(uint8(I3)),title("org*a2")

%****************************************

% Brightness Adjustment

% If b > 0, the brightness increases.
% If b < 0, the brightness decreases.

b1=100 % Constant value for intensity transformation

I4=I-b1;
I5=I+b1;
figure,imshow(uint8(I4)),title("org+b1")
figure,imshow(uint8(I5)),title("org+b1")

%****************************************

% Plot curve for contrast adjustment

ii=0:255;
o1=ii*a1; 
o2=ii*a2;

figure,plot(ii,uint8(o1)) % Plot the intensity transformation curve for a1
hold on
plot(ii,uint8(o2),"r")    % Plot the intensity transformation curve for a2
axis([0 255 0 255])
xlabel("input pixel value")
ylabel("output pixel value")

%****************************************

% Brightness+Contrast Adjustment

I5=imread("low-contrast-lena.jpg")
I6=imadjust(I5) % Apply contrast enhancement using the imadjust function
figure,imshow(uint8(I5))
figure,imshow(uint8(I6))

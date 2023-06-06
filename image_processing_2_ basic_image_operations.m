clc;
clear all;
clear;
close all;

% This file covers fundamental image processing operations that can be performed in MATLAB. 
% Please remember to uncomment the code snippet you want to use by removing the comment symbol (%).

%****************************************

% File reading and display

% f=fopen("C:\Users\GULSAH\Documents\MATLAB\Image Processing\lena.png","r"); % open the image file using the 'fopen()' function and specify the file path
% I=fread(f); % read the image data using the 'fread()' function
% fclose(f); % Close the file using the 'fclose()' function
% 
% [h,w]=size(I) 
% 
% B=reshape(I,w,h); % Reshape the image data into a new matrix B with dimensions w x h
% figure,imshow(uint8('B')) % Display the image using the 'imshow()' function

%****************************************

% Set a region of interest (ROI) in the image to black

% I=imread("lena.png")
% figure,imshow(uint8(I))
% 
% I(50:150,50:150)=0;
% figure,imshow(uint8(I))
  
%*****************************************

% Image subtraction

% This operation involves subtracting a fixed value from each pixel in the image, 
% resulting in a shift in pixel intensities and potentially altering the contrast or brightness of the image.

% [h,w]=size(I)
% I1=zeros(w,h);
% I1=I-100;
% figure,imshow(uint8(I1))

%*****************************************

% Transposing an image

% The nested for loops iterate over each pixel in the original image C. 
% The values from I are transposed and assigned to the corresponding positions in I1.
% I1 = I'
  
% I=imread("C:\Users\GULSAH\Documents\MATLAB\Image Processing\lena.raw")
% figure,imshow(uint8(I))
% 
% [h,w]=size(I);
% I1=zeros
% 
% for i=1:h
%     for j=1:w
%         I1(j,i)=I(i,j);
%     end
% end
% figure,imshow(uint8(I1))

%*****************************************

% Rotate an image

% Angle: 
% The angle value represents the clockwise rotation angle.

% Method: 
% The method refers to the interpolation method used to calculate the new pixel values after the rotation process. 
% The available methods are 'nearest', 'bilinear', and 'bicubic'.

% I=imread("C:\Users\GULSAH\Documents\MATLAB\Image Processing\lena.raw")
% figure,imshow(uint8(I))
% 
% % Rotate the image by 45 degrees using different interpolation methods
% I2=imrotate(I,45,"nearest");  % Rotate with nearest neighbor interpolation
% I3=imrotate(I,45,"bilinear"); % Rotate with bilinear interpolation
% I4=imrotate(I,45,"bicubic");  % Rotate with bicubic interpolation
% 
% figure,imshow(uint8(I2))
% figure,imshow(uint8(I3))
% figure,imshow(uint8(I4))

%*****************************************

% Cropping 

% This operation allows extracting a specific region from an image by cropping it, resulting in a separate image containing only that region of interest.

I=imread("lena.png")
figure,imshow(uint8(I))
  
x1=232;
x2=366;
y1=244;
y2=295;

% Extract the region of interest (ROI)
I2=I(y1:y2,x1:x2)
  
figure,imshow(uint8(I2))

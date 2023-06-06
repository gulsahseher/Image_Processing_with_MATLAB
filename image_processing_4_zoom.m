clc;
clear all;
clear;
close all;

% This code demonstrates the effects of pixel duplication and interpolation methods on zooming an image.
% Zooming is the process of digitally increasing the pixel size of a low-resolution image.

I=double(imread("Lena-image.jpg"))
figure,imshow(uint8(I)),title("org")
[h,w]=size(I);

I2=zeros(2*h,2*w);
I3=zeros(2*h,2*w);

for i=1:h-1
    for j=1:w-1
    
        % Duplicate pixels in the zoomed image (digital zoom)
        
        I2(i*2,j*2)=I(i,j);
        I2(i*2-1,j*2)=I(i,j);
        I2(i*2,j*2-1)=I(i,j);
        I2(i*2-1,j*2-1)=I(i,j);  
        
        % Average neighboring pixels in the zoomed image
        % for smoother transitions during zooming
        
        I3(i*2,j*2)=(I(i,j)+I(i+1,j)+I(i,j+1)+I(i+1,j+1))/4; %%bottom right
        I3(i*2-1,j*2)=(I(i,j)+I(i+1,j))/2; %%top right
        I3(i*2-1,j*2-1)=I(i,j); %%top left
        I3(i*2,j*2-1)=(I(i,j)+I(i,j+1))/2;
    end
end

figure,imshow(uint8(I2)),title("ZOOM-First Method")
figure,imshow(uint8(I3)),title("ZOOM-Second Method")

% Resize the image using different interpolation methods (nearest, bilinear, and bicubic)
% scale factor: it specifies the ratio by which the size of the input image changes. If oran>1 (enlargement), oran<1 (reduction).
% method: it refers to the interpolation method used for resizing, which determines how new pixel values are calculated during size changes.
r=3;
I4=imresize(I,r,"nearest");   
I5=imresize(I,r,"bilinear"); 
I6=imresize(I,r,"bicubic");  

figure,imshow(uint8(I4)),title("nearest")
figure,imshow(uint8(I5)),title("bilinear")
figure,imshow(uint8(I6)),title("bicubic")

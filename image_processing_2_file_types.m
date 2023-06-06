clc;
clear all;
clear;
close all;

% f=fopen("C:\Users\GULSAH\Documents\MATLAB\Image Processing\lena.png","r");
% I=fread(f);
% fclose(f);
% 
% [h,w]=size(I)
% 
% B=reshape(I,w,h);
% figure,imshow(uint8('B'))

%****************************************
% I=imread("lena.png")
% figure,imshow(uint8(I))
% 
% I(50:150,50:150)=0;
% figure,imshow(uint8(I))

%*****************************************
% [h,w]=size(I)
% I1=zeros(w,h);
% I1=I-100;
% figure,imshow(uint8(I1))

%*****************************************
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
%rotate

% I=imread("C:\Users\GULSAH\Documents\MATLAB\Image Processing\lena.raw")
% figure,imshow(uint8(I))
% 
% I2=imrotate(I,45,"nearest");
% I3=imrotate(I,45,"bilinear");
% I4=imrotate(I,45,"bicubic");
% 
% figure,imshow(uint8(I2))
% figure,imshow(uint8(I3))
% figure,imshow(uint8(I4))
% 
% %%%%%
I=imread("lena.png")
figure,imshow(uint8(I))
x1=232;
x2=366;

y1=244;
y2=295;

I2=I(y1:y2,x1:x2)
figure,imshow(uint8(I2))
% 
% 
% 
% 



clc;
clear all;
clear;
close all;

I=double(imread("Lena-image.jpg"))
figure,imshow(uint8(I)),title("org")
[h,w]=size(I);

a1=0.6;
a2=3
I2=I*a1;
I3=I*a2;
figure,imshow(uint8(I2)),title("org*a1")
figure,imshow(uint8(I3)),title("org*a2")

b1=100

I4=I-b1;
I5=I+b1;
figure,imshow(uint8(I4)),title("org+b1")
figure,imshow(uint8(I5)),title("org+b1")

ii=0:255;
o1=ii*a1;
o2=ii*a2;

figure,plot(ii,uint8(o1))
hold on
plot(ii,uint8(o2),"r")
axis([0 255 0 255])
xlabel("input pixel value")
ylabel("output pixel value")

I5=imread("low-contrast-lena.jpg")
I6=imadjust(I5)
figure,imshow(uint8(I5))
figure,imshow(uint8(I6))
clc;
clear all;
clear;
close all;

I=double(imread("Lena-image.jpg"))
figure,imshow(uint8(I)),title("org")
[h,w]=size(I);

I2=zeros(2*h,2*w);
I3=zeros(2*h,2*w);

for i=1:h-1
    for j=1:w-1
        I2(i*2,j*2)=I(i,j);
        I2(i*2-1,j*2)=I(i,j);
        I2(i*2,j*2-1)=I(i,j);
        I2(i*2-1,j*2-1)=I(i,j);  

        I3(i*2,j*2)=(I(i,j)+I(i+1,j)+I(i,j+1)+I(i+1,j+1))/4; %%bottom right
        I3(i*2-1,j*2)=(I(i,j)+I(i+1,j))/2; %%top right
        I3(i*2-1,j*2-1)=I(i,j); %%top left
        I3(i*2,j*2-1)=(I(i,j)+I(i,j+1))/2;
    end
end

figure,imshow(uint8(I2)),title("ZOOM-First Method")
figure,imshow(uint8(I3)),title("Second Method")

r=3;
I4=imresize(I,r,"nearest");
I5=imresize(I,r,"bilinear");
I6=imresize(I,r,"bicubic");

figure,imshow(uint8(I4)),title("nearest")
figure,imshow(uint8(I5)),title("bilinear")
figure,imshow(uint8(I6)),title("bicubic")

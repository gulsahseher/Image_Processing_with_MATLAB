clc;
clear all;
clear;
close all;

I=imread("low-contrast-lena.jpg");
[w,h]=size(I);

hm1=imhist(I);
figure,bar(hm1),title("imhist")
norm_hist=hm1/(w*h);

figure,bar(norm_hist),title("norm_hist-pdf")

c=zeros(1,256);
c(1)=hm1(1);
for i=2:256
    c(i)=c(i-1)+hm1(i);
end

figure,bar(c),title("-cdf")

LUT=zeros(1,256);

cdf_min=min(c);
for v=1:256
    LUT(v)=round(255*(c(v)-cdf_ ...
        min)/(w*h-cdf_min));
end

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
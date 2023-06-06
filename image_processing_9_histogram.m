clc;
clear all;
clear;
close all;

I=imread("low-contrast-lena.jpg");
figure,imshow(uint8(I))
[w,h]=size(I);

% histog=zeros(1,256);
% 
% for i=1:w
%     for j=1:h
%         histog(I(i,j)+1)=histog(I(i,j)+1)+1;
%     end
% end

[hm1]=histogram_bulma(I);
% [hm1]=imhist(I)
figure, plot(hm1)
figure, bar(hm1)

I2=imadjust(I)
figure,imshow(I2),title("enhancement_image")

[hm2]=histogram_bulma(I2);
% [hm2]=imhist(I2)
figure, plot(hm2)
figure, bar(hm2)


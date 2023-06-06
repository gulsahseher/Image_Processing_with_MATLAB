clc;
clear;
clear all;
close all;

w=256;
h=256;
I2=zeros(h,w);

x=128;
y=128;
r=80;

for i=1:w
    for j=1:h
        if (((x-i)^2+(y-j)^2)^1/2<=r^2)
            I1(i,j)=255;
        else
            I1(i,j)=0;
        end
    end
end

figure,imshow(uint8(I1)),title("null")

for i=1:w
    for j=1:h
        I2(i,j)=j-1;
    end
end

figure,imshow(uint8(I2)),title("null")

I3=zeros(h,w);

for i=1:w
    for j=1:h
        I3(i,j)=I2(i,j).*(I1(i,j)/255);
    end
end

figure,imshow(uint8(I3)),title("null")
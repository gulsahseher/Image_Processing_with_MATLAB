%%contrast stretching

clc;
clear all;
clear;
close all;

I=double(rgb2gray(imread("x-ray.jpg")));

I2=255*(I-min(min(I)))/(max(max(I))-min(min(I)));

figure,imshow(uint8(I))
figure,imshow(uint8(I2))
clc;
clear all;
clear;
close all;

% Contrast Stretching

% Contrast stretching, also known as contrast enhancement or intensity rescaling, is a technique used to improve the contrast in an image. 
% It involves expanding the range of pixel values in an image to cover a wider dynamic range, which results in a more visually appealing and better-contrasted image.
% The basic idea behind contrast stretching is to redistribute the pixel values in the image so that they span the entire available range. 
% This is achieved by mapping the minimum and maximum pixel values in the original image to the minimum and maximum values of the desired output range.

I=double(rgb2gray(imread("x-ray.jpg")));

I2=255*(I-min(min(I)))/(max(max(I))-min(min(I))); % Perform contrast stretching

figure,imshow(uint8(I))
figure,imshow(uint8(I2))

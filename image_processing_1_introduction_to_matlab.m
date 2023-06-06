clc;
clear all;
clear;
close all;

% This file includes various basic MATLAB operations, from matrix creation to function calls. 
% Please remember to uncomment the code snippet you want to use by removing the comment symbol (%).

%% Generating a matrix
% A=[1 2 3;4 5 6;7 8 9]
% 
% D=1:5
% 
% E=5:-0.5:4
 
%% Creating a diagonal matrix
% F=diag(1:3)
 
%% Modifying an Element in a A Matrix
% A(1,3)=8

%% Creating a 2x4 zero matrix
% K=zeros(2,4);
% K(2,3)=5

%% Creating a 2x2 identity matrix
% A(1:2,1:2)=ones(2,2)
% A(1:end,[2 4])=9

%% Transpose of a matrix
% B=A'

% For loop 
% for x=1:2:10
%     x 
% end

% While loop 
% a=0;
% while(a<10)
%     a=a+1
% end

%% Calculating Square Roots and Squaring Operations
% x=1:10;
% y=sqrt(x);
% y
% 
% A=(1:4).^2

%% Plotting a graph for sine function
% t=0:0.01:2*pi
% y=sin(t)
% plot(t,y)
% 
% xlabel("x label")
% ylabel("y label")

%% Subplot
% A=[1 2 5 3 0 34];
% B=[-5 2 1 7 4];
% 
% figure,plot(A, '-*'),title("Variable A")
% figure,plot(B, '*'),title("Variable B")
% 
% figure,
% subplot(3,1,1);plot(A),xlabel("A")
% subplot(3,1,2);plot(B),xlabel("B")
% subplot(3,1,3);plot(B/4),xlabel("C")

%% Random matrix element modification
%
% first method
% tic
% R=round(100*rand(1000,100));
% xs=40;
% xf=100;
% ys=60;
% yf=80;
% R(xs:xf,ys:yf)=0
% toc
% 
% second method
% tic
% for i=xs:xf
%     for j=ys:yf
%         R(i,j)=0;
%     end
% end
% toc
% 
%% tic works with the toc function to measure elapsed time.

%% Prompt the user to input two numbers
a=input('Input a number=');
b=input('Input a number=');

%% Calculate the sum of 'a' and 'b'
% output=a+b;
% display(output)

%% Call the 'hesapla' function with inputs 'a' and 'b'
[output1,output2]=calculate(a,b)
display(output1)
display(output2)

clc;
clear;
close all;

img = imread('https://imgcdn.stablediffusionweb.com/2024/9/6/2fcfe7ed-36f3-4b43-af73-58e30254e515.jpg');

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);
gray = (R + G + B) / 3;

px_sum = sum(gray(:));
thresh = px_sum / (144 * 349);
bw = gray > thresh;

blue = img;
blue(:,:,1) = 0;
blue(:,:,2) = 0;

green = img;
green(:,:,1) = 0;
green(:,:,3) = 0;

red = img;
red(:,:,2) = 0;
red(:,:,3) = 0;

subplot(2, 3, 1);
imshow(img);
title("Original");

subplot(2, 3, 2);
imshow(gray);
title("Grayscale");

subplot(2, 3, 3);
imshow(bw);
title("B&W");

subplot(2, 3, 4);
imshow(red);
title("Red");

subplot(2, 3, 5);
imshow(green);
title("Green");

subplot(2, 3, 6);
imshow(blue);
title("Blue");

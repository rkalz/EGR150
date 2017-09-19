% Assignment_01: Matlab Calculations 
% DUE DATE 9/9
% Watch capitalization.

FullName = 'Rofael Aleezada'; %write name inside single quotes

%% EXAMPLE: Calculate the area of a triangle. 
% Input: triBase, triHeight
% Output: triArea

triBase = 10; %arbitrary number 
triHeight = 5; %arbitrary number
triArea = .5*triBase*triHeight %write output in terms of input 

%% Question{01}: Calculate the circumference of a circle
% input = circleRadius
% output = circleCir

circleRadius = 5;
circleCir = 2*pi*circleRadius

%% Question{02}: Calculate the area of a circle
% input = circleRadius
% output = circleArea

circleRadius = 5;
circleArea = pi*(circleRadius^2)

%% Question{03}: Calculate the area of a cylinder 
% input = cylRadius, cylHeight
% output = cylArea

cylRadius = 5;
cylHeight = 6;
cylArea = 2*pi*cylRadius*(cylHeight + cylRadius)

%% Question{04}: Calculate the volume of a cylinder
% input = cylRadius, cylHeight
% output = cylVol

cylRadius = 5;
cylHeight = 6;
cylVol = pi*(cylRadius^2)*cylHeight

%% Question{05}: Calculate the surface area of a sphere
% input = sphRadius
% output = sphArea

sphRadius = 8;
sphArea = 4*pi*(sphRadius^2)

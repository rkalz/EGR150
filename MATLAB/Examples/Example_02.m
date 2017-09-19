% Example_02: Vectors I

% Typed in, increment method, linspace, multiplication methods, and random function 

%% Example{01}: Assign variable "height" to a vector with 1,4, and 5 using the type-in method. 

height = [1 4 5];

%% Example{02}: Assign variable "length" to a vector with 1,3, and 6 using the type-in method.

length = [1 3 6];

%% Example{03}: Assign variable "area" to the product of "height" and "length" 

area = height.*length;

%% Example{04}: Assign varaible "spaced" to a vector of 5 numbers, evenly spaced, starting 
% at 1 and ending at 50. Use linspace function. 

spaced = linspace(1,50,5);

%% Example{05}: Assign variable "index1st" to the number in the first index position of "spaced".

index1st = spaced(1);

%% Example{06}: Assign variable  "positions" to a random vector with 20 positive numbers.

positions = rand(1,20);
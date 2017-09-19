%Example_04: Arrays%

% Assigning arrays and performing various special functions 

%% Example{01}: Assign variable "x" to a 2x4 array with rows 1,7,2,6 and 6,8,9,0 using the type-in method. 

x = [1 7 2 6; 6 8 9 0];

%% Example{02}: Find the positions where x > 5
%assign these values to 5

x(x>5) = 5;

%% Example{03}:Asssign variable 'y' to a random 2x2 array

y = rand(2);

%% Example{04}: Assign variable 'zeros' to a 2x4 array of zeros
%add this array to x

zeros = zeros(2,4);
sum = x + zeros;

%% Example{05}: Square each value of x

x_squared = x.^2;

%% Example{06}: Assign all values in the second and third column of "sums" to 10

new_array = '';




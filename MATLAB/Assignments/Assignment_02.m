% Assignment_02: Vectors I
% DUE DATE 9/9
% Watch capitalization.

FullName = 'Rofael Aleezada'; %write name inside single quotes


%% Question{01}: Assign variable "first_vector" to the set of numbers [3, 5, 8, 5] using the type-in method.
% output: first_vector 

first_vector = [3 5 8 5]

%% Question{02}: Assign variable "even_numbers" to the even values between 0-10 using the incremental series method. 
% output: even_numbers 

even_numbers = [0:2:10]

%% Question{03}: Assign variable "index3rd" to the 3rd number in the vector "even_numbers" using indexing. (this should
% be equal to 4 because 4 is the 3rd number in the vector [0 2 4 6 8 10])
% output: index3rd 

index3rd = even_numbers(3)

%% Question{04}: Assign variable "spaced_vector" to a 1x101 vector with values -150 <= x <= 100 evenly spaced. 
% output: spaced_vector 

spaced_vector = linspace(-150, 100, 101)

%% Question{05}:  Calculate the adjacent side of a right triangle for a vector of inputs. 
% input: opposite_side = [3 5 6 9]  and hypotenuse = [5 13 10 41]
% output: adjacent_side (these are all Pythagorean Triples so the numbers should be whole numbers)

opposite_side = [3 5 6 9];
hypotenuse = [5 13 10 41];
opposite_side_squared = opposite_side.^2; % squares the values inside the vector %
hypotenuse_squared = hypotenuse.^2;
adjacent_side_squared = hypotenuse_squared - opposite_side_squared; % Uses the Pythagorean Theorem to find the squares of the adjacent values %
adjacent_side = sqrt(adjacent_side_squared)


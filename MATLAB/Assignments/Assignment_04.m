% Assignmen/t_02: Arrays 
% DUE DATE 9/16
% Watch capitalization.

FullName = 'Rofael Aleezada'; %write name inside single quotes


%% Question{01}: Assign variable "first_array" to the set of numbers 1-6 in a 2x3 array using the
%incremental series method.
% output: first_array

first_array = [1:3; 4:6];

%% Question{02}: Assign variable "fives" to a 3x3 matrix  of fives by multiplying an array of ones by a scalar value.  
% output: fives

fives = 5*ones(3);

%% Question{03}:  Use concatenation to combine "first_array" and "fives" to a 5x3 vector "combined"
% output: combined

combined = [first_array; fives];


%% Question{04}: Find the overall mean of the vector "combined"
% output: mean_c

mean_c = mean(combined);

%% Question{05}:  Find the dot product of "first_array" and "fives"
%output: product

product = first_array*fives;



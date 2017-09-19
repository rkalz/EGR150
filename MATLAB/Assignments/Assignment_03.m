% Assignment_03: Vectors II
% DUE DATE 9/9
% Watch capitalization.

FullName = 'Rofael Aleezada'; %write name inside single quotes


%% Question{01}: Assign variable "first_vector" to a vector with values [1, 9, 4] using the type-in method.
% output: first_vector 

first_vector = [1, 9, 4];

%% Question{02}: Assign variable "second_array" to a vector of odd numbers 1-5 using the incremental series method. 
% output: second_vector

second_vector = (1:2:5);

%% Question{03}: Use concatenation to combine "first_vector" and "second_vector"
% output: combined_vector

combined_vector = [first_vector second_vector];

%% Question{04}: Use a logical function to determine the positions at which "combined_array" is greater than 2.
% output: greaterthan 

greatherthan = find(combined_vector > 2);

%% Question{05}:  Assign the first three numbers of "combined_vector" to zero. 
% combined_vector

combined_vector(1:3) = 0;

% Assignment_07: MATLAB Review
% DUE DATE 9/30
% Watch capitalization.

FullName = 'Rofael Aleezada'; %write name inside single quotes
%% Question{01}: There are 10 students in a musical performance, and their heights are given below in feet. 
% Convert their heights into inches. Heights = 5.6, 5.8, 4.8, 6.2, 5.3, 5.4, 6.0, 5.5, 5.4 and 4.9 
% input: feet
% output: inches 

feet = [5.6 5.8 4.8 6.2 5.3 5.4 6.0 5.5 5.4 4.9];
inches = feet*12

% output: first_array 

%% Question{02}: Initilize a 2 x 5 array to organize the above students into 2 rows, with the tallest students 
% in the 2nd row.
% output: ordered_students 

sorted = sort(inches,2);
ordered_students = [sorted(1:5); sorted(6:10)]

%% Question{03}: Find the values for the formula y = -2x^3 + x^2 - 3x - 1, where -100 <= x <= 100 and
% x is a 1 x 201 vector.  
% input: x
% output: y

x = -100:100;
y = -2*(x.^3) + x.^2 - 3*x - 1

%% Question{04}: Use slicing to return the lower right 2x2 section of the square matrix below.
% input: whole 
% output: part 

whole = rand(4);
part = whole(3:4, 3:4)

%% Question{05}: Design, explain, and perform a calculation that has not yet been done in the class and is 
% relevant to your field of engineering. Example: A bme student using MATLAB to find the exponential 
% growth of bacteria. Choose a worth-while calculation and include plenty of comments explaining the
% application's importance.

% Bacterial Growth
% You have a petri dish that starts with 100 bacteria. 12 hours later, the
% dish holds 10,000 bacteria. The petri dish can only hold up to 50,000
% bacteria. How long does it take for the petri dish to reach capactiy?

% input: initial_count, next_count, time_at_next_count, capacity
% output: time_to_capacity

initial_count = 100;
next_count = 10000;
time_at_next_count = 12;
capacity = 50000;

% The first and second readings are used to calculate the rate of change.
% y(t) = Ce^(kt), ln(y) = ln(C)+kt, ln(y) - ln(C) = kt
% k = (ln(y) - ln(C))/t

rate_of_change = (log(next_count) - log(initial_count))/time_at_next_count;

% The rate of change and other inputs are used to calculate the time to
% capacity.
% y(t) = Ce^(kt), ln(y) = ln(C)+kt, ln(y) - ln(C) = kt, 
% t = ln(y) - ln(C)/k 

time_to_capacity = (log(capacity) - log(initial_count))/rate_of_change


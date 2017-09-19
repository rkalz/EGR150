% Example_01: MATLAB Review I

%% Variables and Operations 

% Example{01}: Which of the following is a valid variable name?
% A: m gate 
% B: gate/1
% C: m_gate
% D: 1st_gate
% E: gate! 

example_01 = 'C';

% Match the following options with the descriptions below:
% A. Percent sign %
% B. Semi-colon ;
% C. Colon :
% D. Underscore _
% E. Parenthesis ()
% F. "Square" Brackets []
% G. "Curly" Brackets {}
% H. Single quote '
% I. Double quote "
% J. Equals sign = 
% K. Double equals sign ==

% Example{02}: Used to set a value.
example_02 = 'J';

% Example{03}: Used for array creation (range, not single value).
example_03 = 'C';

% Example{04}: Used to indicate a string/char.
example_04 = 'H';

% Example{05}: Used to check for equality between two scalars or arrays 
example_05 = 'E';

% Example{06}: Used to define a comment.
example_06 = 'A'; 

%% Vectors and Arrays 

% Example{07}: Assign a vector "tempFVEC" to 5 temperatures in fahrenheit and convert the temperatures to Celcius. 

tempFVEC = [50 55 60 65 70];
tempCVEC = (tempFVEC - 32)*(5/9); % "." before the operator performs the operation element-wise

% Example{08}: Calculate the squares of the first 100 positive odd numbers

positive = [1:2:199];
positiveSquared = positive.^2;

% Example{09}: Create a 3 x 100 array "concat" where row 1 has evenly spaced numbers 1-50, 
% row 2 has the numbers 1-100, and row 3 has all the even numbers 1-200

concat = [linspace(1,50,100) 1:100 0:2:200];

% Example{10}: Initilize a 3 dimensional array "dim3rd" of random numbers evenly distributed. 
% The size should be 5 x 5 x 3.

dim3rd = randn(5,5,3);

% Exampe{Bonus} Oh no! You worked very hard on a script, but are are now recieving 
% an error message, an incorrect answer, or you are caught in an infinte loop. Which 
% of the following is not an appropite next step? 

% A: Check the message indicator bar (red lines beside scroll bar) for syntax errors
% B: Debug the program by setting break points in the code where you think
%    there could be a problem to examine the variables and values at these points
% C: "Search documentation" to learn more about unfamilar error messages,
%    and then go to MATLAB Friday or a TAs office hour to find out how to fix the issue 
% D: Press CTR/C to escape an infite loop
% E: Quit out of frustration 

bonus_01 = 'E'; 


%Assignment_04: Character Strings

% Assigning and converting strings
% displaying data in Matlab

%% Question{01}: Assign variable "first_string" to the string "Welcome to my code" 
%suppress the output

first_string = 'Welcome to my code';

%output: first_string

%% Question{02}: Convert this string to unsigned 8-bit integers

first_string = uint8(first_string);

%output: first_string


%% Question{03}: Assign variable c to an arbitrary temperature value in Celsius.
% Convert this temperature to degrees farenheit (variable name f).
% Use a print function to display "The temperature is ___ degrees
% Farenheit".

c = 20;
f = 1.8*c + 32;
temp = sprintf('The temperature is %g degrees Farenheit.', f)


%output: temp

%% Question{04}: %Assign the variable name "a" to the string "abecedarian", and the variable "b" to "backpacking"

%outputs : a, b

a = 'abecedarian';
b = 'backpacking';

%% Quesion{05}: Compare "a" and "b" to determine where the two are equal.
% assign the variable "z" to a new string, replacing the equal values with
% the letter 'z'

compare = a == b;
loc = find(compare, 1);
b(loc) = 'z';

%output: b

%Helpful hint: '=' always assigns a variable and '==' always performs a
%logical operation (comparing two vecotrs of the SAME DIMENSIONS)






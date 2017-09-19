%a string is any sequence of numbers enclosed in single quotation marks 
firstString = 'hello world'; 

%all strings are stored as type 'char' (characters). To convert to numeric
%codes, use uint8 
stringNum = uint8(firstString);

%'char' can be used to convert back into characters
stringChar = char(stringNum);


%Example with fprintf formatting 
pie = fprintf('pi is equal to %.3g with two decimal places.', pi);
%print "pi is equal to ____" with two decimal places.


%String Compare returns logical answer, 1 or 0, to see if the strings match (1=yes 0=no)
compareString = strcmp('posom','posum')
compareString2 = strcmp('oposom', 'oposum')

%Create two arbitrary vectors "x" and "y" and suppress the outputs.
%Add these two vectors to equal "z" and supress your output.
%Display "z"

x = [1 2 3];
y = [4 5 6];
z = x + y;
disp('z ')
disp(z)


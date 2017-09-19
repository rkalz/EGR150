%Arrays

%forming arrays 
a = [10 20 30 50; 20 50 80 0] % ";" seperates rows
b = [1:15;16:30] %start:end
c = [linspace(1,30,5);linspace(1,60,5);linspace(1,120,5)]
d = [1:5;5:-1:1] %reads 1st row 1 to 5 and 2nd row 5 to 1 with an increment of -1

%using special functions
e = rand(4) %turns input into a square array, all positive numbers
f = rand(1,4) %rand(row, columns) 
g = rand(4,4) %Will look the same as rand(4)

%size of arrays
sizeE = size(f) %returns row columns 
lengthE = length(f)
average = mean(f)
sumE = sum(f)

%Indexing 
a(1,3) %calls 1st row, 3rd column of array "a"
a(2,3) = 0 %calls 2nd row, 3rd column of array "a" and sets to 0
a(3,3) = 0 %places a 0 in the 3rd row, 3rd column. Because this row/column did not exist in the original array, Matlab fills in with zeros to get to this index and maintain a rectangular array
%a(4,3) returns error because the index does not exist and it isn't being assigned to anything 
a(1,:) = 1 % ":" stands for "all" in this context, calls the 1st row, all columns and sets equal to 1 

%Operations
x = [1 2 3; 4 5 6];
y = [7 8 9; 10 11 12 ];
z = 50;
%scalar/array
add = x + z
sub = x - z
multiply = x*z
divide = x/z
%array/array
addA = x+y
subA = x-y
multiply = x.*y; %"." performs element by element
divide = x./y
exp = x.^2

%Logical 
logArray = x < 3 
logInd = find(x<3) %Matlab reads going down the columns, so index (3) = 1st row 2nd column in this example 



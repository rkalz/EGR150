A = 1:3;
B = 'abcdefg';
C = single([1,2,3;4,5,6]);

% Create an array of these three different variables.
cellarray = {A B C};

% Displays values for the third position
cellarray{3}; % Returns single([1 2 3; 4 5 6])

% Displays description of the first position
cellarray(1); % Returns [1x3 double]

% Display second column of second row of matrix C
cellarray{3}(2,2); % Returns 5

% Create a structure containing numbers, letters, and matrices
my_structure.numbers = A;
my_structure.letters = B;
my_structure.matrix = C;

% Expand fields numbers and matrox with arbitrary values
my_structure(2).numbers = [4 5 6 7];
my_structure(2).matrix = [9 5 7; 3 6 4];

% Display the values in the 'numbers' field
my_structure.numbers

% Planetary Info

name = ['names'};
mass = [2];
year = [1];
velocity = [234];

for i = 1:length(name)
    planetary_information(i, 1) = struct('name', name(i), 'mass', mass(i), 'year', year(i), 'velocity', velocity(i))

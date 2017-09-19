% Assignment_02: For and While loops
% DUE DATE 10/21
% Watch capitalization.

FullName = 'Rofael Aleezada'; %write name inside single quotes


%% Question{01}: Assign the variables C = [23 -40 59 14 0 38 100] (degrees celcius) and 
%F = [99 -40 56 101 32 87 210] (degrees Farenheit)
%Do the proper calculations to convert F to degrees Celsius.
%Use a for loop to compare the two vectors. Create three variables
%'greaterthan', 'lessthan', and 'equal' within your loops to display the
%values of F where F is greater than, less than, or equal to C. 

%Hint: you will need to use an if loop inside of your for loop to complete
%this question.

C = [23 -40 59 14 0 38 100];
F = [99 -40 56 101 32 87 210];
FtoC = (F-32).*(5/9);

for i = 1:length(C);
    if (FtoC(i) == C(i))
        equal = FtoC(i);
        disp(['The values at position ' num2str(i) ' are equal.'])
    elseif (FtoC(i) > C(i))
        greaterthan = FtoC(i);
        disp(['The farenheit value ' num2str(FtoC(i)) ' is greater than the celsius value ' num2str(C(i)) ' at position ' num2str(i)'.'])
    elseif (FtoC(i) < C(i))
        lessthan = FtoC(i);
        disp(['The farenheit value ' num2str(FtoC(i)) ' is less than the celsius value ' num2str(C(i)) ' at position ' num2str(i) '.'])
    end
end
        
%output: greaterthan,lessthan, equal

%% Question{02}: Create two arbitrary 3 x 3 matrices named matrix_one and matrix_two. Using two for loops (rows, columns),
%compare the values in the matrices. If the value in matrix_one are greater,
%set the value in matrix_two to the corresponding position in matrix_one.
%If the value in matrix_two is greater, set the corresponding position in
%matrix_one to zero. If the values in matrix_one and matrix_two are equal,
%do nothing.

matrix_one = randi(10,3);
matrix_two = randi(10,3);

for i = 1:length(matrix_one)
    for j = 1:length(matrix_two)
        if matrix_one(i,j) > matrix_two(i,j)
            matrix_two(i,j) = matrix_one(i,j);
        elseif matrix_two(i,j) > matrix_one(i,j)
            matrix_one(i,j) = 0;
        end
    end
end

disp(matrix_one)
disp(matrix_two)

%output: matrix_one, matrix_two

%% Question{03}: Assign the string DNA = 'ACTGAGATCTATATGAGG' Using a for loop, assign the variable DNA2 to the 
%complementary strand to this DNA sequence. 

DNA = 'ACTGAGATCTATATGAGG';
DNA2 = DNA;
RNA = DNA;  % complement to DNA
RNA2 = DNA; % complement to DNA2

for i = 1:length(DNA)
    if(DNA(i) == 'A')
        DNA2(i) = 'T';
    elseif(DNA(i) == 'T')
        DNA2(i) = 'A';
    elseif(DNA(i) == 'C')
        DNA2(i) = 'G';
    elseif(DNA(i) == 'G')
        DNA2(i) = 'C';
    end
end

disp(DNA2)

%Using another for loop, assign the variables RNA and RNA2 to the strand of
%RNA that corresponds to DNA and its complement. 

%output: DNA2, RNA, RNA2

for i = 1:length(DNA)
    if(DNA(i) == 'A')
        RNA(i) = 'U';
        RNA2(i) = 'A';
    elseif(DNA(i) == 'T')
        RNA(i) = 'A';
        RNA2(i) = 'U';
    elseif(DNA(i) == 'C')
        RNA(i) = 'G';
        RNA2(i) = 'C';
    elseif(DNA(i) == 'G')
        RNA(i) = 'C';
        RNA2(i) = 'G';
    end
end

disp(RNA)
disp(RNA2)

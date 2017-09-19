%Assignment 14
%DUE DATE: 10/28
%Watch Capitalization

FullName = 'Rofael Aleezada'

%Given the student information in the Assignment 14 word document, use an
%for loop to create structure 'students' that consists of each student's name,
%student ID, age, and grades.

%Hint: create a matrix of grades with each row as grades for one student.

%Create a vector of all of the student's average grade. (1x5)
%Determine which student has the highest grade and display his or her name
%and grade.

%Hint: You will need to find the position where the max occurs then use
%that position to display the correct student's name.

grades = [80 85 84 60 94; 95 97 88 87 80; 94 60 98 90 72; 75 79 82 85 85; 90 84 86 89 88];
names = {'Stephen', 'Marie', 'Jim', 'Anna', 'William'};
stuIds = {'steve3', 'Msmith', 'Jimbo', 'Annab15', 'Will.i.am'};
ages = [18; 19; 19; 18; 18];

for i = 1:length(names)
    students(i,1) = struct('name', names(i), 'studentids', stuIds(i), 'age', ages(i), 'grades', grades(i,:));
end

averages = [0 0 0 0 0];

for i = 1:length(names)
    averages(i) = mean(students(i).grades);
end

highest = max(averages);
beststudent = '';

for i = 1:length(averages)
    if averages(i) == highest
        beststudent = students(i).name;
    end
end

disp(beststudent)
disp(highest)
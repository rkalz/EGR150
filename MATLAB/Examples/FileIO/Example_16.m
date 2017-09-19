%% File IO Example
%Be sure to move the spreadsheet from the Lecture folder over into
%your working directory. The file name (sineSpreadsheet.xls) needs to exactly match
%whatever you call the file to read in.

%% import sine data from an excel spreadsheet 

nums = xlsread('sineSpreadsheet.xlsx') %read in excel file
x = nums(:,1);%assign all rows, first column to variable x
y = nums(:,2);%assign all rows, second column to variable y

plot(x,y)%plot x,y

%% export cosine data into an excel spreadsheet

x = 1:0.05:15;%initilize row vector x 1-15 with 0.05 increment
x = x';%transpose row vector (turn into column vector)
y = cos(x);%initilize y as the cos(x)
nums = [x y];%place x and y in a row vector called nums 

xlswrite('cosSpreadsheet.xlsx', nums);%write nums into cosSpreadsheet.xlsx

% optional -> plot data 
plot(x,y)%using hold on to plot multiple functions on the same graph 
% Assignment 15 Functions 
% Due 11/4

% Design a function named "line", that takes in x1, x2, y1, and y2 as
% inputs. Return the slope of the line (m) and plot the line.

function slope = lines(x1,y1,x2,y2);

slope = (y2 - y1)/(x2 - x1);

b = y1 - slope*x1; 

x = 0:10;
y = slope*x + b;

figure;
plot(x,y)

end
% Assignment_11: Switch 
% DUE DATE 10/21

FullName = 'Rofael Aleezada'; %write name inside single quotes

%Question{01}: Design a script using switch that allows a user to input a circle's radius in meters, yards, inches, or feet, and returns the circumference in meters.
% You may find it useful to ask the user for 2 inputs 1) the unit of measurement and 2) the radius distance.

unit = menu('Select a unit to use.', 'meters', 'yards', 'inches', 'feet');
radius = input('Please enter the value of your radius: ');
circumference = 0;

switch unit
    case 1
        circumference = 2*pi*radius;
    case 2
        cirYards = 2*pi*radius;                     
        circumference = cirYards*0.9144; % cirYards yards * 0.9144 meters/yards = x meters
    case 3
        cirInches = 2*pi*radius;               
        circumference = cirInches*0.0254;
    case 4
        cirFeet = 2*pi*radius;
        circumference = cirFeet*0.3048;
    otherwise
        disp('Wait, how did you do that !?!');
end

fprintf('The circumference is %0.5g meters', circumference);


% input: unit, radius
% output: circumference 
%Assignment_10: If-else statements
%due 10/7

FullName = 'Rofael Aleezada';

%% Question{01}: Convert month number to month name using an if loop
%Include an error message if month number is out of range
%Allow users to input month number

insert = input('Enter a month number (between 1 and 12): ');
if (insert < 1 || insert > 12)
    disp('Incorrect input.')
elseif (insert == 1)
    disp('The month is January.')
elseif (insert == 2)
    disp('The month is February.')
elseif (insert == 3)
    disp('The month is March.')
elseif (insert == 4)
    disp('The month is April.')
elseif (insert == 5)
    disp('The month is May.')
elseif (insert == 6)
    disp('The month is June.')
elseif (insert == 7)
    disp('The month is July.')
elseif (insert == 8)
    disp('The month is August.')
elseif (insert == 9)
    disp('The month is September.')
elseif (insert == 10)
    disp('The month is October.')
elseif (insert == 11)
    disp('The month is November.')
elseif (insert == 12)
    disp('The month is December.')
end

%% Question{02}: Assign the variables C = [23 -40 59 14 0 38 100] (degrees celcius) and 
%F = [99 -40 56 101 32 87 210] (degrees Farenheit)
%Do the proper calculations to convert C to degrees Farenheit.
%Use an if loop to compare the two temperatures to displat whether they are
%equal. If they are not equal, use your loop to indaicate which of the two
%is greater.

c = [-23 40 59 14 0 38 100];
f = [99 -40 56 101 32 87 210];
cToF = c.*9/5 + 32;

for i = 1:length(f)
    if (f(i) ~= cToF(i))
        if (f(i) > cToF(i))
            sprintf('%g degrees Farenheit is greater than %g degrees Farenheit.', f(i), cToF(i))
        else
            sprintf('%g degrees Farenheit is greater than %g degrees Farenheit.', cToF(i), f(i))
        end
    else
        fprintf('The values are equal.')
    end
end
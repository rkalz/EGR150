% Class Assignment_13

% Due Date 10-28-15

% Use a while loop to find the total savings for a given number of years with the below parameters. 
% Note: Wages increase by 2% in month 13 and rent increases by $200 every 5 years.

%initilize inputs
monthlyWageAfterTaxes=2700; 
numberOfYears=30;

%convert to months and initilize savings
mwat=monthlyWageAfterTaxes;
monthlySavings=0;
numberOfMonths=numberOfYears*12;

% Expenses
rent=800; 
utilities=300; 
insurance=200; 
auto=250; 
food_misc=325;

month = 1;
expenses = 0;
savings = 0;

while month <= numberOfMonths;
    if mod(month-1, 12) == 0 && month ~= 1
        mwat = mwat*1.02;
    end
    if mod(month-1, 60) == 0 && month ~= 1
        rent = rent+200;
    end
    expenses = rent + utilities + insurance + auto + food_misc;
    monthlySavings = mwat - expenses;
    savings = savings + monthlySavings;
    month = month + 1;
end

disp(num2str(savings,'%.2f'))

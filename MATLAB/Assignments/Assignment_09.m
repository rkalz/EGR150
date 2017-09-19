%% Assignment_09

vec1 = linspace(1,20,10);
vec2 = [1:2:20];  

% Question 1 Set "less" equal to a logical array where vec2 is less than vec1
less = vec2 < vec1;

% Example 2 Set "notMore" to a logical array where vec1 is NOT greater than or equal to vec2
notMore = ~(vec1 >= vec2);

% Example 3 Set "equals" equal to a logical array where vec1 equals vec2
equals = vec1 == vec2;

% Example 4 Set "orStatement" to a logical array where vec1 equals vec2 OR where vec1 is less than vec2
orStatement = (vec1 == vec2) | (vec1 < vec2);

% Example 5 Set "andStatement" to a logical array where the number in vec1
% is greater than vec2 AND less than 10
andStatement =  (vec1 > vec2) & (vec1 < 10);

% Example 6  Set "tall" equal to the index positions where heights is greater than 5.9
heights = [6.0 5.3 6.2 5.8 5.2 ; 8.5 5.8 5.2 5.9 6.6 ];
tall = find(heights>5.9);


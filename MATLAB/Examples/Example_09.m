%%Logical Statements 

%Some definitions
% == (compares two numbers for equality)
% > (great than)
% < (less than)
% >= (greater than or equal to
% <= less than or equal to
% &, && (for arrays element-wise AND, for scalars AND )
% |, || (for arrays element-wise OR, for scalars OR)
% ~ (not)
% true (1)
% false (0)

%Create two vectors of your choice with the same dimensions 
vec1 = [1 2 3];
vec2 = [4 5 6];

%Comparing two vectors MUST BE THE SAME DIMENSION 

% Example 1 Set "less" equal to a logical array where vec1 is less than or equal to vec2
less = vec1 <= vec2;

% Example 2 Set "notMore" to a logical array where vec1 is NOT less than or equal to vec2
notMore = ~(vec1 <= vec2);

% Example 3 Set "equals" equal to a logical array where vec1 equals vec2
equals = vec1 == vec2;

% Example 4 Set "orStatement" to a logical array where vec1 equals vec2 OR where vec1 is greater than vec2
orStatement = (vec1 == vec2) | (vec1 >= vec2);

% Example 5 Set "andStatement" to a logical array where the numbers are equal in both arrays AND 
% greater in vec1 (since this is true for none of them, it should be a 1x6 array of zeros) 
andStatement = (vec1 == vec2) & (vec1 > vec2);

% Example 6  Set "fives" equal to the index numbers where "array" is equal
% to 5 
array = [1 5 6 8 2 ; 5 8 2 8 6 ]
fives = find(array==5);

%Note: MATLAB linearizes arrays and will returns a linear index. This means 
%the numbers are put into a long column and read '1, 5, 5, 8, 6, 2 , 8 , 8, 2, 6'. So while
%we see the two 5's are located in (1,2) and (2,1), MATLAB will return that
%they are located at position 2 and 3 because of linear indicies. 


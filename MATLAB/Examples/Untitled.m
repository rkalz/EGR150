A= [10:2:1; 10:3:22];

B= {'structure'; 'example'};

C= linspace(20,40,5);

 

my_structure.one =A;                                                  

my_structure(1).two =B(1,:) ;

my_structure(2).two =B(2,:);

my_structure.three =C;
x = [ 1 2 3 4 5 6 ];
y = zeros(1,100);
H1 = 0;
H2 = 0;
H3 = 0;

for n = 1:100
   x1 = randperm(6,1); 
   x2 = randperm(6,1);  
   x3 = randperm(6,1);  
   s = x1 + x2 + x3;
   y(1,n) = s;
end

disp(y);
x = [ 1 2 3 4 5 6 ];
y = zeros(1,100);
H1 = zeros(1,6);
H2 = zeros(1,6);
H3 = zeros(1,6);

for n = 1:100
   x1 = randperm(6,1);
   H1(1,x1) = H1(1,x1) + 1;
   x2 = randperm(6,1); 
   H2(1,x2) = H1(1,x2) + 1;
   x3 = randperm(6,1); 
   H3(1,x3) = H3(1,x3) + 1;
   s = x1 + x2 + x3;
   y(1,n) = s;
end

disp(H1);
disp(H2);
disp(H3);

figure
X = [1 2 3 4 5 6];
H1 = [H1(1,1) H1(1,2) H1(1,3) H1(1,4) H1(1,5) H1(1,6)]; 
w1 = 0.5; 
bar(X,H1,w1,'r')

H2 = [H2(1,1) H2(1,2) H2(1,3) H2(1,4) H2(1,5) H2(1,6)];
w2 = .25;
hold on
bar(X,H2,w2,'b')

H3 = [H3(1,1) H3(1,2) H3(1,3) H3(1,4) H3(1,5) H3(1,6)];
w3 = .125;
hold on
bar(X,H3,w3,'g')
hold off

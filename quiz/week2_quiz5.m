disp("Question 1")
A = [1 2; 3 4; 5 6]
B = [1 2 3; 4 5 6]

C = B' + A
#C = A' * B
#C = B + A
C = A * B

disp("Question 2")

A = [16,2,3,13;5,11,10,8;9,7,6,12;4,14,15,1]

#B = A(:, 0:2) 
B = A(:, 1:2)
B = A(1:4, 1:2)
#B = A(0:4, 0:2)

disp("Question 3")
A = ones(10,10);
x = ones(10,1);

v = zeros(10, 1);

for i = 1:10
	 for j = 1:10 
	   v(i) = v(i) + A(i, j) * x(j);
	 end
end

v


v = zeros(10, 1);
v = A * x
 
v = zeros(10, 1); 
v = sum (A * x)
 
v = zeros(10, 1) 
v = A .* x;
 
v = zeros(10, 1)
#v = Ax;

disp("Question 4")
v = ones(7,1);
w = ones(7,1);


z = 0;
for i = 1:7
  z = z + v(i) * w(i);
end

z

z = v' * w
 
#z = v * w
 
z = sum (v .* w)
 
z = v .* w

disp("Question 4")
X = ones(7,7)

for i = 1:7
  for j = 1:7
    	A(i, j) = log (X(i, j));
	    B(i, j) = X(i, j) ^ 2;
    	C(i, j) = X(i, j) + 1;
	    D(i, j) = X(i, j) / 4;
   end
end

A
B
C
D


B = X .^ 2
 
C = X + 1
 
D = X / 4
 
B = X ^ 2
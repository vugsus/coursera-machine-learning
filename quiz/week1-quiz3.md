# Week 1 | III. Linear Algebra

## Question 1


Let two matrices be 

![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?A = \begin{bmatrix}  1 & -4 \\\\ -2 & 1 \end{bmatrix})

![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?B = \begin{bmatrix}  0 & 3 \\\\ 5 & 8 \end{bmatrix})
                


### Answer

What is A - B?

![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?\begin{bmatrix}  1 & -7 \\\\ -7 & -7 \end{bmatrix})
	
---

## Question 2

![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?Let x = \begin{bmatrix}  5 \\\\ 5 \\\\ 2 \\\\ 7 \end{bmatrix})



What is 2 * x?
### Answer


![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?x = \begin{bmatrix}  10 \\\\ 10 \\\\ 4 \\\\ 14 \end{bmatrix})

---

## Question 3

Let u be a 3-dimensional vector, where specifically 

![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?Let u = \begin{bmatrix}  3 \\\\ 5 \\\\ 1 \end{bmatrix})



What is u<sup>T</sup>?
### Answer


![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?u^T = \begin{bmatrix}  3 & 5 & 1 \end{bmatrix})

---


## Question 4

Let u and v be 3-dimensional vectors, where specifically 

![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?u = \begin{bmatrix}  4 \\\\ -4 \\\\ -3 \end{bmatrix})

![image](http://frog.isima.fr/cgi-bin/bruno/tex2png--10.cgi?v = \begin{bmatrix}  4 \\\\ 2 \\\\ 2 \end{bmatrix})

What is u<sup>T</sup>v? 

(Hint: u<sup>T</sup> is a 1x3 dimensional matrix, and v can also be seen as a 3x1 matrix. The answer you want can be obtained by taking the matrix product of uT and v.)

### Answer

u<sup>T</sup>v = 4 * 4 + -4 * 2 + -3 * 4 = -4

---


## Question 5

Let u and v be 3-dimensional vectors, where specifically 

Let A and B be 3x3 (square) matrices. Which of the following must necessarily hold true?

### Answer
* If C=A∗B, then C is a 6x6 matrix.
	*  Since A and B are both 3x3 matrices, their product is 3x3. More generally, if A were an m×n. matrix, and B a n×o matrix, then C would be m×o. (In our example, m=n=o=3.)
* **If B is the 3x3 identity matrix, then A∗B=B∗A**
	* Even though matrix multiplication is not commutative in general (A∗B≠B∗A for general matrices A,B), for the special case where A=I, we have A∗B=I∗B=B, and also B∗A=B∗I=B. So, A∗B=B∗A 	
* A∗B=B∗A
	* We saw in the lecture that matrix multiplication is not commutative in general. 
* **If v is a 3 dimensional vector, then A∗B∗v is a 3 dimensional vector.**
	* Since A and B are both 3x3 matrices, A∗B is 3x3 matrix. Thus, (A∗B)∗v is a 3x3 matrix times a 3×1 matrix (since v is a 3 dimensional vector, and thus also a 3x1 matrix), and the result gives a 3x1 vector. 



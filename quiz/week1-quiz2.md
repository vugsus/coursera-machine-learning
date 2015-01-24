# Week 1 | II. Linear regression with one variable

## Question 1


Consider the problem of predicting how well a student does in her second year of college/university, given how well they did in their first year. Specifically, let x be equal to the number of "A" grades (including A-. A and A+ grades) that a student receives in their first year of college (freshmen year). We would like to predict the value of y, which we define as the number of "A" grades they get in their second year (sophomore year). 

Questions 1 through 4 will use the following training set of a small sample of different students' performances. Here each row is one training example. Recall that in linear regression, our hypothesis is $hθ(x)=θ_0+θ_1x$, and we use m to denote the number of training examples.

| x | y |
|---|---|
| 5	| 4 |
| 3	| 4 |
| 0	| 1 |
| 4	| 3 |

For the training set given above, what is the value of m? In the box below, please enter your answer (which should be a number between 0 and 10).

### Answer

m is the number of training examples. In this example, we have m=4 examples.

	4
	
---

## Question 2


Many substances that can burn (such as gasoline and alcohol) have a chemical structure based on carbon atoms; for this reason they are called hydrocarbons. A chemist wants to understand how the number of carbon atoms in a molecule affects how much energy is released when that molecule combusts (meaning that it is burned). The chemists obtains the dataset below. In the column on the right, “kJ/mol” is the unit measuring the amount of energy released. 
examples.

![image](https://d396qusza40orc.cloudfront.net/ml/images/2.2-quiz-1.png)

You would like to use linear regression (hθ(x)=θ_0+θ_1x) to estimate the amount of energy released (y) as a function of the number of carbon atoms (x). Which of the following do you think will be the values you obtain for θ_0 and θ_1? You should be able to select the right answer without actually implementing linear regression.

### Answer

Since the carbon atoms (x) increase and the released heat (y) decreases, θ_1 has to be negative.
θ_0 functionas as the offset. Looking at the table:
a few θ_0 should be  higher than -1000


* θ_0=−1780.0,θ_1=−530.9
* **θ_0=−569.6,θ_1=−530.9**
* θ_0=−1780.0,θ_1=530.9
* θ_0=−569.6,θ_1=530.9

Question Explanation

We can give an approximate estimate of the θ0 and θ1 values observing the trend of the data in the training set. We see that the y values decrease quite regularly when the x values increase, then θ1 must be negative. θ0 is the value that the hypothesis takes when x is equal to zero, therefore it must be superior to y(1) in order to satisfy the decreasing trend of the data. Among the proposed answers, the only one that meets both the conditions is hθ(x)=−569.6−530.9x. We can better appreciate these considerations observing the graph of the training data and the linear regression (below): 

![image](https://d396qusza40orc.cloudfront.net/ml/images/2.2-quiz1-exp.png)


---

## Question 3

Suppose we set θ_0=−1,θ_1=0.5. What is hθ(4)?

### Answer

	hθ(x) = θ_0 + θ_1x
	hθ(x) = -1 + 0.5x
	hθ(4) = -1 + 0.5 * 4
	hθ_θ(4) = 1
	
---

##Question 4

Let f be some function so that f(θ0,θ1) outputs a number. For this problem, f is some arbitrary/unknown smooth function (not necessarily the cost function of linear regression, so f may have local optima). Suppose we use gradient descent to try to minimize f(θ0,θ1) as a function of θ0 and θ1. Which of the following statements are true? (Check all that apply.)

### Answer

* If θ0 and θ1 are initialized so that θ0=θ1, then by symmetry (because we do simultaneous updates to the two parameters), after one iteration of gradient descent, we will still have θ0=θ1.
	* 	The updates to θ0 and θ1 are different (even though we're doing simultaneous updates), so there's no particular reason to expect them to be the same after one iteration of gradient descent.
* Setting the learning rate α to be very small is not harmful, and can only speed up the convergence of gradient descent.
	* If the learning rate is small, gradient descent ends up taking an extremely small step on each iteration, so this would actually slow down (rather than speed up) the convergence of the algorithm. 
* **If the first few iterations of gradient descent cause f(θ0,θ1) to increase rather than decrease, then the most likely cause is that we have set the learning rate α to too large a value.**
	* If alpha were small enough, then gradient descent should always successfully take a tiny small downhill and decrease f(\theta_0,\theta_1) at least a little bit. If gradient descent instead increases the objective value, that means alpha is too large (or you have a bug in your code!). 	
* **If the learning rate is too small, then gradient descent may take a very long time to converge.**
	* 	If the learning rate is small, gradient descent ends up taking an extremely small step on each iteration, and therefore can take a long time to converge.


---

## Question 5

Suppose that for some linear regression problem (say, predicting housing prices as in the lecture), we have some training set, and for our training set we managed to find some θ0, θ1 such that J(θ0,θ1)=0. Which of the statements below must then be true? (Check all that apply.)

### Answer

* For this to be true, we must have θ0=0 and θ1=0 so that hθ(x)=0
	*  If J(θ0,θ1)=0, that means the line defined by the equation "y=θ0+θ1x" perfectly fits all of our data. There's no particular reason to expect that the values of θ0 and θ1 that achieve this are both 0 (unless y(i)=0 for all of our training examples).
* **Our training set can be fit perfectly by a straight line, i.e., all of our training examples lie perfectly on some straight line.**
	* If J(θ0,θ1)=0, that means the line defined by the equation "y=θ0+θ1x" perfectly fits all of our data.
* For this to be true, we must have y(i)=0 for every value of i=1,2,…,m.
	* So long as all of our training examples lie on a straight line, we will be able to find θ0 and θ1 so that J(θ0,θ1)=0. It is not necessary that y(i)=0 for all of our examples.
* We can perfectly predict the value of y even for new examples that we have not yet seen. (e.g., we can perfectly predict prices of even new houses that we have not yet seen.)
	* Even though we can fit our training set perfectly, this does not mean that we'll always make perfect predictions on houses in the future/on houses that we have not yet seen.








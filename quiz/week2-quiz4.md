# Week 2 | IV. Linear Regression with Multiple Variables

## Question 1




Suppose m=4 students have taken some class, and the class had a midterm exam and a final exam. You have collected a dataset of their scores on the two exams, which is as follows:

| midterm exam | (midterm exam)^2 | final exam |
|--------------|------------------|------------|
| 89 | 7921 | 96 |
|72|5184|74|
|94|8836|87|
|69|4761|78|

You'd like to use polynomial regression to predict a student's final exam score from their midterm exam score. Concretely, suppose you want to fit a model of the form hθ(x)=θ0+θ1x1+θ2x2, where x1 is the midterm score and x2 is (midterm score)2. Further, you plan to use both feature scaling (dividing by the "max-min", or range, of a feature) and mean normalization. 
What is the normalized feature x<sub>(3)</sub><sup>1</sup>? (Hint: midterm = 89, final = 96 is training example 1.) Please enter your answer in the text box below. If applicable, please provide at least two digits after the decimal place.
### Answer

The mean of x1 is 81 and the range is 94−69=25 

So x<sub>(3)</sub><sup>1</sup> is 94−81/25=0.52.


(see week2_quiz4.m octave file)

	
---

## Question 2


You run gradient descent for 15 iterations with α=0.3 and compute J(θ) after each iteration. You find that the value of J(θ) decreases slowly and is still decreasing after 15 iterations. Based on this, which of the following conclusions seems most plausible?

### Answer

* **Rather than use the current value of α, it'd be more promising to try a larger value of α (say α=1.0).**
	* A larger value for α should increase the rate of convergence to the minimum of J(θ).
* Rather than use the current value of α, it'd be more promising to try a smaller value of α (say α=0.1).
* α=0.3 is an effective choice of learning rate.


--- 

## Question 3

Suppose you have m=14 training examples with n=3 features (excluding the additional all-ones feature for the intercept term, which you should add). The normal equation is θ=(X<sup>T</sup>X)<sup>−1</sup> X<sup>T</sup>y. For the given values of m and n, what are the dimensions of θ, X, and y in this equation?

### Answer

Add feature to X => 14x4 matrix
y = 1 col, m rows => 14X1 ( 1 result per example)
θ = 4 cols, 1 row => 1x4 ( 1 value per feature)

(m x n) * (n * m)

* **X is 14×4, y is 14×1, θ is 4×1**
* X is 14×4, y is 14×4, θ is 4×4
* X is 14×3, y is 14×1, θ is 3×3
* X is 14×3, y is 14×1, θ is 3×1

---

## Question 4
Suppose you have a dataset with m=1000000 examples and n=200000 features for each example. You want to use multivariate linear regression to fit the parameters θ to our data. Should you prefer gradient descent or the normal equation?

### Answer

* The normal equation, since it provides an efficient way to directly find the solution.
* Gradient descent, since it will always converge to the optimal θ.
* **Gradient descent, since (X<sup>T</sup>X)^−1 will be very slow to compute in the normal equation.**
	* With n=200000 features, you will have to invert a 200001×200001 matrix to compute the normal equation. Inverting such a large matrix is computationally expensive, so gradient descent is a good choice.	
* The normal equation, since gradient descent might be unable to find the optimal θ.


---

## Question 5
Which of the following are reasons for using feature scaling?

### Answer


* **It speeds up gradient descent by making it require fewer iterations to get to a good solution.**
	* Feature scaling speeds up gradient descent by avoiding many extra iterations that are required when one or more features take on much larger values than the rest.
* It is necessary to prevent gradient descent from getting stuck in local optima.
	* The cost function J(θ) for linear regression has no local optima. 
* It speeds up gradient descent by making each iteration of gradient descent less expensive to compute.
	* The magnitude of the feature values are insignificant in terms of computational cost.
* It prevents the matrix X<sup>T</sup>X (used in the normal equation) from being non-invertable (singular/degenerate).
	* X<sup>T</sup>X can be singular when features are redundant or there are too few examples. Feature scaling does not solve these problems.
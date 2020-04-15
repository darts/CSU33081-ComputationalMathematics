# CSU33081: Computational Mathematics

## Assignment 3 - Senán d'Art - 17329580  

### Question 1

Using the code:  

```matlab 
a = InfinityNorm([-2 1 0; 1 -2 1; 0 1 -1.5])
b = InfinityNorm([4 -1 0 1 0; -1 4 -1 0 1; 0 -1 4 -1 0; 1 0 -1 4 -1; 0 1 0 1 -4])

function N = InfinityNorm (A)
    N = max(sum(abs(A)));
end
```

$a = 4$  
$b = 7$  

Answer: $(i)$

<br><br>

### Question 2

Fourth order Lagrange polynomial:
$$
\begin{aligned}
f(x) = 
\frac{(x-x_2)(x-x_3)(x-x_4)(x-x_5)}{(x_1-x_2)(x_1-x_3)(x_1-x_4)(x_1-x_5)}y_1 
+ \\
\frac{(x-x_1)(x-x_3)(x-x_4)(x-x_5)}{(x_2-x_1)(x_2-x_3)(x_2-x_4)(x_2-x_5)}y_2
+ \\
\frac{(x-x_1)(x-x_2)(x-x_4)(x-x_5)}{(x_3-x_1)(x_3-x_2)(x_3-x_4)(x_3-x_5)}y_3
+ \\
\frac{(x-x_1)(x-x_2)(x-x_3)(x-x_5)}{(x_4-x_1)(x_4-x_2)(x_4-x_3)(x_4-x_5)}y_4
+ \\
\frac{(x-x_1)(x-x_2)(x-x_3)(x-x_4)}{(x_5-x_1)(x_5-x_2)(x_5-x_3)(x_5-x_3)}y_5
\end{aligned}
$$

<br>

Variables:
$$
x_1 = 14, x_2 = 22, x_3 = 30, x_4 = 38, x_5 = 46
$$
$$
y_1 = 320, y_2 = 490, y_3 = 540, y_4 = 500, y_5 = 480
$$

$$
\begin{aligned}
f(x) = 
\frac{(x-22)(x-30)(x-38)(x-46)}{(14-22)(14-30)(14-38)(14-46)}320 
+ \\
\frac{(x-14)(x-30)(x-38)(x-46)}{(22-14)(22-30)(22-38)(22-46)}490
+ \\
\frac{(x-14)(x-22)(x-38)(x-46)}{(30-14)(30-22)(30-38)(30-46)}540
+ \\
\frac{(x-14)(x-22)(x-30)(x-46)}{(38-14)(38-22)(38-30)(38-46)}500
+ \\
\frac{(x-14)(x-22)(x-30)(x-38)}{(46-14)(46-22)(46-30)(46-30)}480
\end{aligned}
$$

$$
f(x) = \frac{5x^4-460x^3+9760x^2+11280x-434640}{6144}
$$  
$x=26$  

Result:  

$f(26)=530$


Answer: $530W$

<br><br>

### Question 3

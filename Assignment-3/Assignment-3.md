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

3-point, central distance formula results in:
$O(h^2)$

Answer:$(ii)$

<br><br>

### Question 4

#### (a)  

3-point, backwards distance: 
$$
\begin{aligned}
f'(x_{i+2}) = 
\frac{x_{i+2} - x_{i+1}}{(x_i-x_{i+1})(x_i-x_{i+2})}y_{i} 
+ \\
\frac{x_{i+2} - x_{i}}{(x_{i+1}-x_{i})(x_{i+1}-x_{i+2})}y_{i+1} 
+ \\
\frac{2x_{i+2} - x_{i}-x_{i+1}}{(x_{i+2}-x_{i})(x_{i+2}-x_{i+1})}y_{i+2} 
\end{aligned}
$$

Male:  
$x_{i+2} = 2006$  
$x_{i+1} = 2003$  
$x_{i} = 2002$

$y_{i+2} = 665,647$  
$y_{i+1} = 646,493$  
$y_{i} = 638,182$

$$
\begin{aligned}
f'(x_{i+2}) = 
\frac{(2006) - (2003)}{((2002)-(2003))((2002)-(2006))}(638182)
+ \\
\frac{(2006) - (2002)}{((2003)-(2002))((2003)-(2006))}(646493)
+ \\
\frac{2(2006) - (2002)-(2003)}{((2006)-(2002))((2006)-(2003))}(665647)
\end{aligned}
$$

$$
f'(x_{i+2}) = \frac{957273}{2}-\frac{2585972}{3}+\frac{4659529}{12} = 4940
$$

Female:  
$x_{i+2} = 2006$  
$x_{i+1} = 2003$  
$x_{i} = 2002$

$y_{i+2} = 256,257$  
$y_{i+1} = 225,042$  
$y_{i} = 215,005$

$$
\begin{aligned}
f'(x_{i+2}) = 
\frac{(2006)-(2003)}{((2002)-(2003))((2002)-(2006))}(215005)
+ \\
\frac{(2006)-(2002)}{((2003)-(2002))((2003)-(2006))}(225042)
+ \\
\frac{2(2006)-(2002)-(2003)}{((2006)-(2002))((2006)-(2003))}(256257)
\end{aligned}
$$

$$
f'(x_{i+2}) = 10,681
$$

<br>

#### (b)

3-point, central distance: 
$$
\begin{aligned}
f'(x_{i+1}) = 
\frac{x_{i+1}-x_{i+2}}{(x_{i}-x_{i+1})(x_{i}-x_{i+2})}y_{i}
+ \\
\frac{2x_{i+1}-x_{i}-x_{i+2}}{(x_{i+1}-x_{i})(x_{i+1}-x_{i+2})}y_{i+1}
+ \\
\frac{x_{i+1}-x_{i}}{(x_{i+2}-x_{i})(x_{i+2}-x_{i+1})}y_{i+2}
\end{aligned}
$$

Males:  
Using formula, prediction = $673601$

$$
\frac{673601-677807}{677807} = -0.0062 = 0.62\%
$$

Females:  
Using formula, prediction = $277987$
$$
\frac{277987-276417}{276417} = 0.00567 = 0.57\%
$$

Answer: $(ii)$

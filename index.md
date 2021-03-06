---
title       : Logistic Equation App
subtitle    : For the Data Products coursera coures
author      : sazielke
job         : 
framework   : io2012      # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]    
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## App Overview

This app allows the user to play around with the logistic equation. The logistic equation is used as a simple example of chaos theory. Users can select various input values for the equation and view the result.

![](assets/img/full.png)



--- .class #id 

## The Logistic Equation

The logistic equation is an iterative equation, so the output value $x_{n+1}$ becomes the input for the next iteration of the equation, $x_n$.

$$x_{n+1} = rx_n(1-x_n)$$

Here is an example of the first few iterations using the default values from the app.


```r
y <- 0.5; x_new <- 0.5
for (i in 1:10){
  x_new <- 3.25*x_new*(1-x_new)
  y <- c(y,x_new)
}
y
```

```
##  [1] 0.5000000 0.8125000 0.4951172 0.8124225 0.4952746 0.8124274 0.4952646
##  [8] 0.8124271 0.4952652 0.8124271 0.4952652
```

---
## Input

Users use sliders to input values for the equation. The range is limited to what is believed to be the most interesting range of values. (0-4] for r and [0-1] for x.

![](assets/img/select.png)

---
## Output

A plot displays the first 100 iterations of the equation.

![](assets/img/plot.png)



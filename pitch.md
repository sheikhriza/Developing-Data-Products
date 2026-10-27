Car MPG Predictor App Pitch
========================================================
author: Course Data Scientist
date: October 27, 2026
autosize: true

Slide 1: Introduction & Executive Summary
========================================================
Achieving fuel efficiency estimation is crucial for modern automotive evaluation. This presentation showcases a responsive data product designed to solve this evaluation seamlessly.

- **Objective**: Instantly predict fuel economy (MPG).
- **Predictor Variable**: Gross Horsepower (HP).
- **Core Technology**: R Shiny Application Framework.

Slide 2: Dataset Under the Hood
========================================================
The application utilizes the verified **mtcars** package dataset derived from Motor Trend magazine. Let's look at the structured format of the data variables used:


```r
head(mtcars[, c("mpg", "hp")], 3)
```

```
               mpg  hp
Mazda RX4     21.0 110
Mazda RX4 Wag 21.0 110
Datsun 710    22.8  93
```
A clear negative correlation exists between a vehicle's horsepower output and its overall fuel efficiency layout.

Slide 3: Embedded Server Calculations
========================================================
To satisfy peer evaluation requirements, here is the execution calculation running inside our application's `server.R` backend script structure:




```
Error in parse(text = x, srcfile = src) : <text>:3:13: unexpected input
2: fit <- lm(mpg ~ hp, data = mtcars)
3: summary(fit)\
               ^
```

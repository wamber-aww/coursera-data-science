# Introduction

This is the second course of the Coursera Data Science Specialization, **R Programming**. This course focuses on the nuts and bolts of using R as a programming language.

# Course Description

In this course you will learn how to program in R and how to use R for effective data analysis. You will learn how to install and configure software necessary for a statistical programming environment, discuss generic programming language concepts as they are implemented in a high-level statistical language. The course covers practical issues in statistical computing which includes programming in R, reading data into R, accessing R packages, writing R functions, debugging, and organizing and commenting R code. Topics in statistical data analysis and optimization will provide working examples.

# Contents

The assignments link to the html pages containing the project description, the functions, and the results. Each function is also separately saved as a `.R` file

### Week 1: Background, Getting Started, and Nuts & Bolts

This week is all about getting started with R and learning some of the basic details of the language. If you haven't already installed R, you should go to the R web site and download R for your platform (Windows, Mac, or Unix/Linux). Also, if you want, you can download RStudio, which is a free interactive development environment designed for R that is very useful and we use quite a bit in the Data Science Specialization.
  - [Week 1 quiz](https://wamber-aww.github.io/coursera-data-science/Course02_RProgramming/W1Quiz.html)  

### Week 2: Control structures, functions, scoping rules, dates and times

This week is all about functions and about controlling the flow of an R program. We start with control structures (like if-else, and for loops) and then move on to writing functions. Next, we discuss the lexical scoping features of the language and how they can be used in interesting ways, particularly for statistical applications.
  - [Week 2 quiz](https://wamber-aww.github.io/coursera-data-science/Course02_RProgramming/W2Quiz.html)  

For this first programming assignment you will write three functions that are meant to interact with dataset that accompanies this assignment. The dataset is contained in a zip file `specdata.zip` that you can download from the Coursera web site.
  - [Week 2 assignment writeup](https://wamber-aww.github.io/coursera-data-science/Course02_RProgramming/W2Hw.html)  
    - [function: pollutantmean.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course02_RProgramming/pollutantmean.R)  
    - [function: complete.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course02_RProgramming/complete.R)
    - [function: corr.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course02_RProgramming/corr.R)

### Week 3: Loop functions, debugging tools

This week is what I call "loop functions" in R, which are functions that allow you to execute loop-like behavior in a compact form. These functions typically have the word "apply" in them and are particularly convenient when you need to execute a loop on the command line when using R interactively. These functions are some of the more interesting functions of the R language. This week we also cover the debugger that comes with R and how to interpret its output to help you find problems in your programs and functions. The lecture videos for this week are: (1) Loop functions: lapply, apply, tapply, split, mapply (2) Debugger, Parts 1-3
  - [Week 3 quiz](https://wamber-aww.github.io/coursera-data-science/Course02_RProgramming/W3Quiz.html)  

The second programming assignment will require you to write an R function is able to cache potentially time-consuming computations. For example, taking the mean of a numeric vector is typically a fast operation. However, for a very long vector, it may take too long to compute the mean, especially if it has to be computed repeatedly (e.g. in a loop). If the contents of a vector are not changing, it may make sense to cache the value of the mean so that when we need it again, it can be looked up in the cache rather than recomputed. In this Programming Assignment will take advantage of the scoping rules of the R language and how they can be manipulated to preserve state inside of an R object.
  - [Week 3 assignment writeup](https://wamber-aww.github.io/coursera-data-science/Course02_RProgramming/W3Hw.html) 
    - [function: cachematrix.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course02_RProgramming/cachematrix.R) 

### Week 4: Simulation, code profiling
This week covers how to simulate data in R, which serves as the basis for doing simulation studies. We also cover the profiler in R which lets you collect detailed information on how your R functions are running and to identify bottlenecks that can be addressed. The profiler is a key tool in helping you optimize your programs. Finally, we cover the str function, which I personally believe is the most useful function in R.
  - [Week 4 quiz](https://wamber-aww.github.io/coursera-data-science/Course02_RProgramming/W4Quiz.html)  

The purpose of the assignment is to analyze data and information about the quality of care at over 4,000 Medicare-certified hospitals in the U.S. This dataset essentially covers all major U.S. hospitals. This dataset is used for a variety of purposes, including determining whether hospitals should be fined for not providing high quality care to patients.
  - [Week 4 assignment writeup](https://wamber-aww.github.io/coursera-data-science/Course02_RProgramming/W4Hw.html) 
    - [function: best.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course02_RProgramming/best.R)
    - [function: rankhospital.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course02_RProgramming/rankhospital.R)
    - [function: rankall.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course02_RProgramming/rankall.R)

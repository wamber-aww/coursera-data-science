# Introduction

This is the tenth course of the Coursera Data Science Specialization, **Data Science Capstone**. This course focuses on analyzing a large corpus of text documents to discover the structure in the data and how words are put together to build a predictive text model.

# Contents
### Task 1: Getting and cleaning the data
 - Tokenization: identifying appropriate tokens such as words, punctuation, and numbers. Writing a function that takes a file as input and returns a tokenized version of it.
    - [tokenization.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course10_Capstone/tokenization.R)
 - Profanity filtering - removing profanity and other words you do not want to predict.
    - [rmProfanity.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course10_Capstone/rmProfanity.R)
 - [Task 1 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task1.html)
 - [Week 1 quiz](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/W1Quiz.html)
 
### Task 2: Exploratory data analysis
 - Exploratory analysis - perform a thorough exploratory analysis of the data, understanding the distribution of words and relationship between the words in the corpora.
 - Understand frequencies of words and word pairs - build figures and tables to understand variation in the frequencies of words and word pairs in the data. 
 - [Task 2 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task2.html)

### Task 3: Modeling
 - Build basic n-gram model - using the exploratory analysis you performed, build a basic n-gram model for predicting the next word based on the previous 1, 2, or 3 words.
 - Build a model to handle unseen n-grams - in some cases people will want to type a combination of words that does not appear in the corpora. Build a model to handle cases where a particular n-gram isn't observed.
 - [Task 3 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task3.html)

### Task 4: Prediction model
 - Build a predictive model based on the previous data modeling steps - you may combine the models in any way you think is appropriate.
 - Evaluate the model for efficiency and accuracy - use timing software to evaluate the computational complexity of your model. Evaluate the model accuracy using different metrics like perplexity, accuracy at the first word, second word, and third word.
 - [Task 4 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task4.html)
 - [Week 3 quiz](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task4.html)

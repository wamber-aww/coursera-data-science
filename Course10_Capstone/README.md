# Introduction

This is the tenth course of the Coursera Data Science Specialization, **Data Science Capstone**. This course focuses on analyzing a large corpus of text documents to discover the structure in the data and how words are put together to build a predictive text model.

# Contents
### Task 1: Getting and Cleaning the Data
 - Tokenization: identifying appropriate tokens such as words, punctuation, and numbers. Writing a function that takes a file as input and returns a tokenized version of it.
    - [tokenization.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course10_Capstone/tokenization.R)
 - Profanity filtering - removing profanity and other words you do not want to predict.
    - [rmProfanity.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course10_Capstone/rmProfanity.R)
 - [Task 1 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task1.html)
 - [Week 1 quiz](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/W1Quiz.html)
 
### Task 2: Exploratory Data Analysis
 - Exploratory analysis - perform a thorough exploratory analysis of the data, understanding the distribution of words and relationship between the words in the corpora.
 - Understand frequencies of words and word pairs - build figures and tables to understand variation in the frequencies of words and word pairs in the data. 
 - [Task 2 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task2.html)

### Task 3: Modeling
 - Build basic n-gram model - using the exploratory analysis you performed, build a basic n-gram model for predicting the next word based on the previous 1, 2, or 3 words.
 - Build a model to handle unseen n-grams - in some cases people will want to type a combination of words that does not appear in the corpora. Build a model to handle cases where a particular n-gram isn't observed.
 - [Task 3 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task3.html)

### Task 4: Prediction Model
 - Build a predictive model based on the previous data modeling steps - you may combine the models in any way you think is appropriate.
 - Evaluate the model for efficiency and accuracy - use timing software to evaluate the computational complexity of your model. Evaluate the model accuracy using different metrics like perplexity, accuracy at the first word, second word, and third word.
 - [Task 4 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task4.html)
 - [Week 3 quiz](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/W3Quiz.html)
   - [nextWords.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course10_Capstone/nextWords.R)

### Task 5: Creative Exploration
 - Explore new models and data to improve your predictive model.
 - Evaluate your new predictions on both accuracy and efficiency.
 - [Task 5 writeup](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/Task5.html)
 - [Week 4 quiz](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/W4Quiz.html)
 
### Task 6: Data Product
 - Create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others via a Shiny app.
 - Create a data product to show off your prediction algorithm You should create a Shiny app that accepts an n-gram and predicts the next word.
 - [Shiny app for word prediction](https://wamber.shinyapps.io/wordPred/)
   - [ui.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course10_Capstone/ui.R)
   - [server.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course10_Capstone/server.R)
   - [nextWordsApp.R](https://github.com/wamber-aww/coursera-data-science/blob/gh-pages/Course10_Capstone/nextWordsApp.R)
 
### Task 7: Slide Deck
 - Pitch your data product to your boss or an investor. The slide deck is constrained to be 5 slides or less and should: (1) explain how your model works, (2) describe its predictive performance quantitatively and (3) show off the app and how it works.
 - [Slide deck](https://wamber-aww.github.io/coursera-data-science/Course10_Capstone/presentation.html)

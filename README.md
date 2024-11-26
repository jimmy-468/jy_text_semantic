# What is this
A student's GitHub repository done as a part of coding exercise, KI-course H7F6003 assignment. 

## Contents:
1. R package "JyTextSemantic" for summarising negative and positive words in a document. Consists of a wrapper function and 2 helper functions:
  + jy_text_analyser(), a wrapper function for end user interaction
  + jy_text_file_reader(), helper function for reading text from a .txt-file
  + jy_pos_neg_words(), helper function for counting positive and negative words
2. Test runs of group peers packages, in markdown file "./code/JY test packages.Rmd". Test results can also be directly viewed in "./code/JY test packages.nb.html". Sample data files (input and output) are stored in folder ```./grp_peers_files```
3. Markdown files for quizzes/tasks (eg. day 6 tidyverse), located in the ```./QUIZ N TASKS```-folder


## How to use the "JyTextSemantic" package for R:

### 1a) Install from .zip file
1. Download the "jy_text_semantic-main.zip" using the green "< > Code"-button above
2. Notice where the .zip file is stored
3. In R, try following code:
  + ```renv::install("<path to file folder>/jy_text_semantic-main.zip")```

### 1b) ...or install directly from Github
```library(devtools) # Make sure that the devtools library is loaded```  
```install_github("https://github.com/jimmy-468/jy_text_semantic.git")```

### 2) Run the code
```library(JyTextSemantic)```  
```jy_text_analyser("../data/Example_negative.txt")```

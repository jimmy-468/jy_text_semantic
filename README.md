# What is this
Package for summarising negative and positive words in a document. 
Done as a part of coding exercise, KI-course H7F6003 assignment.

Consists of a wrapper function for end user interaction: jy_text_analyser())
and 2 helper functions: jy_text_file_reader() and jy_pos_neg_words()

Test the function through following code
jy_text_analyser("../data/Example_negative.txt")

The quiz/tasks markdownfiles (eg. day 6 tidyverse) are in the "QUIZ N TASKS"-folder

# How to use (suggested steps):

1. Download the "jy_text_semantic-main.zip" using the green "< > Code"-button above
2. Notice where the .zip file is stored
3. In R, try following code:
  + renv::install("<path to file folder>/jy_text_semantic-main.zip")
  + library(jy_text_semantic-main)
  + jy_text_analyser("../data/Example_negative.txt")


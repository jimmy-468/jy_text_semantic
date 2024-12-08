% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jy_pos_neg_words.R
\name{jy_pos_neg_words}
\alias{jy_pos_neg_words}
\title{jy_pos_neg_words (main function)}
\usage{
jy_pos_neg_words(words_from_text_file)
}
\arguments{
\item{words_from_text_file}{a char vector of words from text file}
}
\value{
vec_of_rat_pos_neg vector of 3 elements: as.numeric(c(ratio pos/neg words, n_pos_words, n_neg_words))
}
\description{
Finds n positive and negative words and returns their ratio
}
\examples{
jy_pos_neg_words(c("positive", "negative", "words"))
}

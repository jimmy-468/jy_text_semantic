#' jy_text_analyser (main function)
#'
#' A (wrapper) function to read words from a text file, and find the ratio between positive and negative words
#' @param file_path the file path to text file to be read (file-format must be "*.txt")
#'
#' @return Ratio between positive and negative words (numeric scalar)
#' @export
#'
#' @examples
#' jy_text_analyser("../data/Example_negative.txt")

jy_text_analyser <- function(file_path){

  vec_of_rat_pos_neg <- jy_pos_neg_words(jy_text_file_reader(file_path))
  # see documentation for respective function for what they do

  # parsing output from jy_pos_neg_words()
  n_pos_words_found <- vec_of_rat_pos_neg[2]
  n_neg_words_found <- vec_of_rat_pos_neg[3]
  ratio_pos_words <- vec_of_rat_pos_neg[1]

  # Verbose output from function
  print(paste("In .txt-file", file_path))
  print(paste("Positive words found:", as.character(n_pos_words_found)))
  print(paste("Negative words found:", as.character(n_neg_words_found)))
  print(paste("Ratio positive/negative words:", "(see below)"))

  # return statement
  return(ratio_pos_words)
}

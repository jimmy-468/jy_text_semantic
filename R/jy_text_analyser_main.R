#' jy_text_analyser (main function)
#'
#' A (wrapper) function to read words from a text file, and find the ratio between positive and negative words
#' @param file_path the file path to text file to be read (file-format must be "*.txt")
#'
#' @return Ratio between positive and negative words
#' @export
#'
#' @examples
#' jy_text_analyser("../data/Example_negative.txt")

jy_text_analyser <- function(file_path){

  jy_pos_neg_words(jy_text_file_reader(file_path))
  # see documentation for respective function for what they do

}

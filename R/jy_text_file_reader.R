#' jy_text_file_reader
#'
#' Reads words from a text file, format them into lower case
#' @param file_path the file path to text file to be read (file-format must be "*.txt")
#'
#' @return Vector of char-strings
#' @export
#'
#' @examples
#' jy_text_file_reader("../data/Example_negative.txt")

jy_text_file_reader <- function(file_path){

  # READ delimited text strings from text file
  txt_strings_from_file <- read.delim(file=file_path, header = FALSE)

  # Formatting to lower and split text strings to words
  words_from_text_file <- c() #resulting string vector for all words in text file
  for (text_string in txt_strings_from_file) {
    words_vector <- tolower(text_string) #convert all letters to lower case
    words_vector <- unlist(strsplit(words_vector, split = " ")) #split string on space
    words_vector <- unlist(strsplit(words_vector, split = ",")) #get rid of commas
    #unlist() to get strsplit output from list
    words_from_text_file <- c(words_from_text_file, words_vector)
  }

  return(words_from_text_file)
}

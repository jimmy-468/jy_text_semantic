#' jy_pos_neg_words (main function)
#'
#' Finds n positive and negative words and returns their ratio
#' @param words_from_text_file a char vector of words from text file
#'
#' @return Ratio between positive and negative words
#' @export
#'
#' @examples
#' jy_pos_neg_words(c("positive", "negative", "words"))

jy_pos_neg_words <- function(words_from_text_file){

  # Bugfix: FILE paths to reference text files containing positive and neg words
  filepath_pos_words = system.file("data", "Positive words.txt", package = "JyTextSemantic")
  filepath_neg_words = system.file("data", "Negative words.txt", package = "JyTextSemantic")

  # READ positive and negative word vector, assume one word per row in word-list-file
  # their file paths are hardcoded, sorry
  # output from read.delim() is a list so unlist() to turn output to char vector
  pos_words <- unlist(read.delim(file = filepath_pos_words, header = FALSE))
  neg_words <- unlist(read.delim(file = filepath_neg_words, header = FALSE))

  # Create placeholder char vectors for matches
  pos_words_matches = c() #empty word vector for positive words matches
  neg_words_matches = c() #emptyword vector for negative words matches

  # COMPARE text with pos and neg words, find them respectively
  # by using outer loop going through each word in text file
  for (current_word in words_from_text_file) {
    # ...combined with inner loop 1 for finding positive words...
    for (current_pos_word in pos_words) {
      if (startsWith(current_word, current_pos_word)) {
        pos_words_matches = c(pos_words_matches, current_word)
      }
    } #end inner loop 1

    # ... and inner loop 2 for finding negative words
    for (current_neg_word in neg_words) {
      if (startsWith(current_word, current_neg_word)) {
        neg_words_matches = c(neg_words_matches, current_word)
      }
    } #end inner loop 2
  } #end outer loop

  #SUMMARIZING and RETURNing the results
  n_pos_words_found <- length(pos_words_matches)
  n_neg_words_found <- length(neg_words_matches)
  ratio_pos_words <- n_pos_words_found/(n_pos_words_found + n_neg_words_found)
  return(ratio_pos_words)
  # we can return other variables here of course, perhaps even in organized in an obj

  #VERBOSE reporting of results
  print(paste("\n Positive words found:", as.character(n_pos_words_found)))
  print(paste("\n Negative words found:", as.character(n_neg_words_found)))
  print(paste("\n Ratio positive/negative words:", as.character(ratio_pos_words)))
}

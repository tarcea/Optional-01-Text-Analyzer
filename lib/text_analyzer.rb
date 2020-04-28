def analyze(text)
  result = {}
  # TODO: should analyze the text, and return the result hash with all features
  #
  # 2. In `analyze`, `text` is a string, you can thus measure its length easily
  char_count = text.length
  # 3. Temporarily remove whitespaces and count characters excluding spaces
  char_w_spaces = text.delete(' ').length
  # 4. Split out all the whitespaces to find out how many words there are
  words_count = text.split(' ').length
  # 5. Split out full stops to find out the number of sentences
  sentences_count = text.split('.').length
  # 6. Split out double linebreaks to calculate the number of paragraph
  lines_count = text.split(/\n/).length
  paragr_count = text.split(/\n\n/).length
  # 7. Compute the averages using your counters.
  words_per_sentence = (words_count.to_f / sentences_count)
  sent_per_par = (sentences_count.to_f / paragr_count)
  result[:character_count] = char_count
  result[:character_count_excluding_spaces] = char_w_spaces
  result[:line_count] = lines_count
  result[:word_count] = words_count
  result[:sentence_count] = sentences_count
  result[:paragraph_count] = paragr_count
  result[:average_words_per_sentence] = words_per_sentence
  result[:average_sentences_per_paragraph] = sent_per_par
  result
end

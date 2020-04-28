require './text_analyzer.rb'
# 1. Create a `program.rb` that loads the file
# containing the text document and calls the `analyze` method
# require 'text_analizer.rb'

# file = File.open('oliver.txt')
# file_data = file.readlines.map(&:chomp)
# puts file_data
# file.close
# file_data = File.read("oliver.txt")
text = File.read('oliver.txt')
puts analyze(text)
# text.split('.')
# text.split(/\n/).length
# result = {}
# lines_count = 0
# words_count = 0
# dots_count = 0
# paras_count = 0
# File.foreach(text) do |line|
#   paras_count += 1 if line == ' '
#   lines_count += 1
#   words_count += line.split.length
#   line.chomp.split('').each do |char|
#     dots_count += 1 if char == '.'
#   end
# end

# result[:line_count] = lines_count
# result[:word_count] = words_count
# result[:sentence_count] = dots_count
# result[:paragraph_count] = paras_count

# p result

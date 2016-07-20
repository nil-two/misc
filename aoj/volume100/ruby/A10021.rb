n_words = gets.to_i
words   = $<.map(&:chomp)

minimum_word = words.sort.take(1)
puts minimum_word

File.open('/usr/share/dict/words', 'r').each do |word|
  Word.create(original_word: word.chomp,
              sorted_word:   word.chomp.downcase.split("").sort.join)
end

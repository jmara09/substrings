def substrings(words, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, dict_word|
    words.split.each do |word|
      hash[dict_word] += 1 if word.include?(dict_word)
    end
    hash
  end 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)



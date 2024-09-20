def substrings(words, dictionary)
  words = words.downcase
  dictionary.reduce(Hash.new(0)) do |hash, dict_word|
    words.split.each do |word|
      hash[dict_word] += 1 if word.include?(dict_word)
    end
    hash
  end 
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
# => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}



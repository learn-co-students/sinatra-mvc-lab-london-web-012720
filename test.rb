require "pry"

phrase = "this is a test"

def consonant?(word)
    word.match"/\A[^aeiou]/"
    puts string
end

words = phrase.split(" ")
consonant?(words[0])
words.each do |word| 
    puts word[0]
    
end

list = %w/ aab bybt xeix axei AAsE SAEE eAAs xxsa Xxsr /

puts list.select { |word| word =~ /\A(?i:(?![aeiou])[a-z]){3}/ }
#binding.pry
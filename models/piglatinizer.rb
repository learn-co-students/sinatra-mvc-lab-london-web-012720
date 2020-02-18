require 'pry'
class PigLatinizer 


    def piglatinize(string)
        #parse the string into words and then put the piglatinzed 
        #words back together 
        a = string.split(" ")
        b = a.map {|word| piglatinize_word(word)}
        b.join(" ")
        # binding.pry

    end 
    
    def piglatinize_word(word)
        first_letter = word[0].downcase 
        if ["a", "e", "i", "o", "u"].include?(first_letter)
            "#{word}way"
            #if letter matches vowel then we can add "way" at end of it
        else
            consonants = [] 
            consonants << word[0]
            if ["a", "e", "i", "o", "u"].include?(word[1]) == false 
                consonants << word[1] 
                if ["a", "e", "i", "o", "u"].include?(word[2]) == false 
                    consonants << word[2] 
             #going through each letter until we find a vowel 
                end 
            end 
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
            #this creates me part of string and join it with "ay"
        end 
            #piglatinize word that starts with a consonant
            #piglatinizing individual words 
    end 

end 
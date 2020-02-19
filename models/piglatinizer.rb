class PigLatinizer 

def initialize(string)
    @string = string
end

def pig_latinizer
    response = ""
    @string.split(" ").each do |f|
      
           f[0]
           response += " #{f [1..-1]}#{f[0]}ay"
      
end
     response 
end
end
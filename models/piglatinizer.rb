class PigLatinizer
    attr_accessor :words

    def initialize
    end 

    VOWELS = ["A", "E", "I", "O", "U", "a", "e", "i", "o", "u"]
    PHONETICSTWOLETTER = ["Sm", "St", "Gl", "Tr", "Fl", "Sk", "Th", "sm", "st", "gl", "tr", "fl", "sk", "th", "Pl", "pl", "Pr", "pr", "Sp", "sp", "Wh", "wh"]
    PHONECTICSTHREELETTER = ["Str", "str", "Spr", "spr"]

    def piglatinize(words_to_convert)
        each_word = words_to_convert.split(" ")
        pig_latin = each_word.map do |word|
            phonetic_test_one = word[0..2]
            phonetic_test_two = word[0..1]
            if VOWELS.include?(word[0])
                "#{word}" + "way"
            elsif 
                PHONECTICSTHREELETTER.include?(phonetic_test_one) 
                "#{word[3..-1]}" + "#{word[0..2]}" + "ay"
            elsif 
                PHONETICSTWOLETTER.include?(phonetic_test_two) 
                "#{word[2..-1]}" + "#{word[0..1]}" + "ay"
            else 
                "#{word[1..-1]}" + "#{word[0]}" + "ay"
            end
        end
        pig_latin.join(" ")   
    end 

end 
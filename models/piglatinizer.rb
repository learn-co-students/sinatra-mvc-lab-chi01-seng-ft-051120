#noodle soup" becomes "oodlenay oupsay"
require 'pry'
class PigLatinizer

  def piglatinize(input_str)
    input_str.split(" ").map{ |word| piglatinize_word(word)}.join(" ") 
  end 

  def vowel?(char)
    char.match(/[aAeEiIoOuU]/)
  end 

  def piglatinize_word(word)
    #if word starts with a vowel
    if vowel?(word[0])
      word + "way"
    else 
    #word starts with a consonant
      vowel_index = word.index(/[aAeEiIoOuU]/)
      consonants = word.slice(0..vowel_index-1)
      word_leftover = word.slice(vowel_index..word.length)
      word_leftover + consonants + "ay"
    end 
  end 

end 
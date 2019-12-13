class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def evaluator(word1, word2)
    if (@word1[/[(aeiou)]/]) && (@word2[/[(aeiou)]/])
      puts "Your word has at least one vowel--woohoo!"
      true
    else
      puts "Hang on, I think you need to buy a vowel or two."
      false
    end
  end

end

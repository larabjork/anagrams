class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def evaluator(word1, word2)
    if (@word1[/[(aeiou)]/] && @word1.length > 1) && (@word2[/[(aeiou)]/] && @word2.length > 1) && (@word1.length == @word2.length)
      puts "You've got words that we can compare!"
      return "yes word"
    elsif (@word1.length == 1) || (@word2.length == 1)
      puts "Your word is too short"
      "too short"
    elsif @word1.length != @word2.length
      puts "Your words are different lengths, so they can't be anagrams of each other"
      "not anagram"
    elsif (@word1[/[(^aeiou)]/]) || (@word2[/[(^aeiou)]/])
      puts "Hang on, I think you need to buy a vowel or two."
      "no vowel"
    end
  end




end

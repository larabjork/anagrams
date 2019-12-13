class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def evaluator(word1, word2)
    tester1 = @word1.split(//).sort.join.to_s
    tester2 = @word2.split(//).sort.join.to_s
    if (tester1[/[(aeiou)]/] && tester1.length > 1) && (tester2[/[(aeiou)]/] && tester2.length > 1) && (tester1.length == tester2.length)
      puts "You've got words that we can compare!"
      return "yes word"
    elsif (tester1.length == 1) || (tester2.length == 1)
      puts "Your word is too short"
      "too short"
    elsif tester1.length != tester2.length
      puts "Your words are different lengths, so they can't be anagrams of each other"
      "not anagram"
    elsif (tester1[/[(^aeiou)]/]) || (tester2[/[(^aeiou)]/])
      puts "Hang on, I think you need to buy a vowel or two."
      "no vowel"
    end
  end




end

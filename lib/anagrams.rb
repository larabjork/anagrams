class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def evaluator(word1, word2)
    tester1 = word1.split(//).sort.join.to_s
    tester2 = word2.split(//).sort.join.to_s
    if (tester1.length == 1) || (tester2.length == 1)
      puts "Your word is too short"
      "too short"
    elsif (tester1[/[aeiou]/]) && (tester2[/[aeiou]/]) && (tester1 == tester2)
      puts "Woohoo! You've got anagrams!"
      "yes anagram"
    elsif (tester1[/([^aeiou])/])
      puts "Hang on, I think you need to buy a vowel or two."
      "no vowel"
    elsif (tester2[/([^aeiou])/])
      puts "Hang on, I think you need to buy a vowel or two."
      "no vowel"
    elsif tester1 != tester2
      puts "You don't have an anagram"
      "not anagram"

    end
  end




end

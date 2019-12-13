class Anagram
  def initialize(input1, input2)
    @input1 = input1
    @input2= input2
  end

  def evaluator(input1, input2)
    if (@input1[/[(aeiou)]/] && @input1.length > 1) && (@input2[/[(aeiou)]/] && @input2.length > 1) && (@input1.length == @input2.length)
      puts "You've got words that we can compare!"
      return "yes word"
    elsif (@input1.length == 1) || (@input2.length == 1)
      puts "Your word is too short"
      "too short"
    elsif @input1.length != @input2.length
      puts "Your words are different lengths, so they can't be anagrams of each other"
      "not anagram"
    elsif (@input1[/[(^aeiou)]/]) || (@input2[/[(^aeiou)]/])
      puts "Hang on, I think you need to buy a vowel or two."
      "no vowel"
    end
    # word1 = input1.split(//).sort
    # word2 = input2.split(//).sort
    # if word1.casecmp word2 = 0


  end



end

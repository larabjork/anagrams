class Anagram
  def initialize(start)
    @start = start
    # @word1 = word1
    # @word2 = word2
  end

  def first_answer
    if start == "Y"
      start.analyzer
    elsif start == "N"
      puts "I'd be happy to help, but it sounds like you're OK on your own."
    else
      puts "Huh? I didn't understand that."
    end
  end

  def analyzer
    puts "Enter the first word or phrase that you want the Analyzer to examine."
    word1 = gets.chomp
    puts "Enter the second word or phrase that you want the Analyzer to compare to the first."
    word2 = gets.chomp
    self.evaluator(word1, word2)
  end


  def evaluator(word1, word2)
    lowercase1 = word1.downcase.gsub(/\W/, "")
    lowercase2 = word2.downcase.gsub(/\W/, "")

    tester1 = lowercase1.split(//).sort.join.to_s
    tester2 = lowercase2.split(//).sort.join.to_s
    if (tester1.length == 1) || (tester2.length == 1)
      puts "Your word is too short"
      "too short"
    elsif (tester1[/^[^aeyiuo]+$/]) || (tester2[/^[^aeyiuo]+$/])
      puts "Hang on, I think you need to buy a vowel or two."
      "no vowel"
    elsif (tester1[/[aeiou]/]) && (tester2[/[aeiou]/]) && (tester1 == tester2)
      puts "Woohoo! You've got anagrams!"
      "yes anagram"
    elsif tester1 != tester2
      anti_check1 = tester1.split(//)
      anti_check2 = tester2.split(//)
      if anti_check1 - anti_check2 == anti_check1
        puts "You found some antigrams!"
        "yes antigram"
      else
        "neither"
      end
    end

  end




end

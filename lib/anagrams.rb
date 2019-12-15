class Anagram
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
    @dictionary = {"too short" => "Your word is too short.",
      "no vowel" => "Hang on, I think you need to buy a vowel or two.",
      "yes anagram" => "Woohoo! You've got anagrams!",
      "yes antigram" => "You found some antigrams!",
      "neither" => "You don't have an anagram or an antigram." }
  end

  def translator(key)
    @dictionary.fetch(key)
  end


  def evaluator
    tester1 = @word1.downcase.gsub(/\W/, "").split(//).sort.join.to_s
    tester2 = @word2.downcase.gsub(/\W/, "").split(//).sort.join.to_s

    if (tester1.length == 1) || (tester2.length == 1)
      "too short"
    elsif (tester1[/^[^aeiouy]+$/]) || (tester2[/^[^aeiouy]+$/])
      "no vowel"
    elsif tester1 == tester2
      "yes anagram"
    elsif tester1 != tester2
      anti_check1 = tester1.split(//)
      anti_check2 = tester2.split(//)
      if anti_check1 - anti_check2 == anti_check1
        "yes antigram"
      else
        "neither"
      end
    end

  end




end

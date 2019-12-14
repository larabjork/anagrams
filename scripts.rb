# usr/bin/env ruby
require('./lib/anagrams.rb')



puts "----------------------------"
puts "   Anagram or Antigram?"
puts "----------------------------"
puts "Do you want to check if two words or phrases have exactly the same letters as each other? Or whether they have nothing in common? Y/N"
pair1 = Anagram.new(gets.chomp)

result = pair1.analyzer(word1, word2)

  puts "Here's your result: #{result}"
  puts "----------------------------"

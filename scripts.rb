# usr/bin/env ruby
require('./lib/anagrams.rb')



puts "----------------------------"
puts "   Anagram or Antigram?"
puts "----------------------------"
puts "Do you want to check if two words or phrases have exactly the same letters as each other? Or whether they have nothing in common? Y/N"
start = Anagram.new(gets.chomp)
puts "Enter the first word or phrase that you want the Analyzer to examine."
puts "Enter the second word or phrase that you want the Analyzer to compare to the first."
word_one = Anagram.new(gets.chomp)
word_two = Anagram.new(gets.chomp)
result = start.evaluator(word_one, word_two)
puts "Here's your result: #{result}"
puts "----------------------------"

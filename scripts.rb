#!/ usr/bin/env ruby
require('./lib/anagrams.rb')
require('pry')

puts `clear`
puts "----------------------------"
puts "   Anagram or Antigram?"
puts "----------------------------"
puts "Please enter the first word or phrase you want me to analyze."
word1 = gets.chomp
puts "Now tell me about the second word I should examine."
word2 = gets.chomp


analysis = Anagram.new(word1, word2)
evaluation = analysis.evaluator
result = analysis.translator(evaluation)
puts result
puts "----------------------------"

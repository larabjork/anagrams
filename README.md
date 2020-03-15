# Anagrams and Antigrams
## Created by Lara Bjork on December 13, 2019
### Project Description

This project was completed as an independent assignment for the Ruby class  at Epicodus, during a week focused on Behavior-Driven Development with Ruby. The task description was as follows:
_Create an algorithm with an anagram method that follows the rules included below._

_You should have at least one passing test for each of the included steps (in other words, a minimum of 5 tests). Make sure you commit after each passing test. Your final project should have at least 6 commits, including one for each passing test._

_Two words are anagrams if they contain the exact same letters in a different order. For example, "ruby" and "bury" are anagrams because they contain the same letters._

  1. Check if two words are anagrams. If they are, your method should return something like this: "These words are anagrams."

  2. Account for the possibility that words might have different cases but should still be anagrams. For instance, "Tea" is still an anagram of "Eat".

  3. Add a rule to check if the inputs are words. Words can only be anagrams or anagrams if they are, in fact, actually words. (For instance, "yurb" isn't an anagram of "ruby" because "yurb" isn't a real word.) A word must contain a vowel (a, i, e, o, u) or y. Otherwise it's not a word. If one of the inputs has no vowels, your method should return something like this: "You need to input actual words!" (You only need to write a rule for vowels.)

  4. If phrases aren't anagrams, the method should check whether they are actually "antigrams." For our purposes, a word is an "antigram" of another word if no letters match. For example, "hi" has no matches with "bye". The method should return something like this if there are no letter matches: "These words have no letter matches and are antigrams."

  5. Account for multiple words being anagrams or "antigrams." Spaces and punctuation shouldn't count (so they should be removed). You'll need to make sure that each word in the inputted phrases is really a word (passing condition #4 above). You may want to use a regular expression to remove additional characters._

### Specifications
These specs were developed based on the assignment description.
**1. Behavior:** The program will be able to identify if one or both of the user's entries has no vowels in it (and therefore is an actual word).
**Input:** sdfd, dogsd
**Output:** "Hang on, I don't think you entered an actual word"

**2. Behavior:** The program will be able to see that a single-letter word is not an anagram, because the order can't be changed.
**Input:** a
**Output:** "Sorry, you need to enter a word with at least two letters"

**3. Behavior:** The program will be able to check whether the two words entered by the user have a different number of letters; if so, they are not anagrams.
**Input:** two, four
**Output:** "Sorry, these are not anagrams"

**4. Behavior:** The program will be able to check whether the two words entered by the user have exactly the same letters, regardless of what order they are in; if so, they are anagrams.
**Input:** tea, eat
**Output:** "Congrats! You've got anagrams!"

**5. Behavior:** The program will be able to check whether the two words entered by the user have exactly the same letters, regardless of what order they are in and regardless of capitalization; if so, they are anagrams.
**Input:** tea, Eat
**Output:** "Congrats! You've got anagrams!"

**6. Behavior:** The program will be able to check whether the two words entered by the user have no letters in common, regardless of what order they are in and regardless of capitalization; if so, they are antigrams.
**Input:** dog, Cat
**Output:** "Congrats! You found two antigrams!"

**7. Behavior:** The program will be able to check whether two phrases (of at least two words) entered by the user are anagrams, antigrams, or neither.
**Input:** "Lair nana, Rail naan", "hi there, boy o boy", "dogs and cats, hippos and zebras"
**Output:** "Congrats! You've got anagrams!", "Congrats! You found two antigrams!",
"Sorry, your phrases aren't anagrams or antigrams. But they are still very nice."

### Technologies Used
Ruby 2.5.1, rspec, pry, Bundler

Project was written using Google Chrome; no other browsers were tested for compatibility.

### Project Setup instructions
1. Ensure that you have the correct version of Ruby installed.
2. Clone the project locally from github.
3. Install Bundler if you do not already have it by running **gem install bundler** in the terminal.
4. Run **bundle install** to manage gems; if you make additional changes to the Gemfile, you will need to run this command again.
5. Enter **ruby scripts.rb** to start the app in the terminal. You will need to do this each time you want to enter a pair of words.
6. To run the app's tests, enter **rspec -fd** in the terminal. Adding **-fd** will allow you to see a brief description of what each test is looking for. The tests will still run if you enter only **rspec**.
6. If something doesn't display correctly or goes wrong somehow, please contact me at <lara.m.bjork@gmail.com> and I will do my best to troubleshoot for you.

### Known Issues and Limitations
* No known bugs

### License
This software is licensed under the MIT license.

Copyright (c) 2019 Lara Bjork

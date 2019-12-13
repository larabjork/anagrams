require('rspec')
require('pry')
require('anagrams')

describe('#evaluator') do

    it('should find out whether an entry has no vowels (and therefore is not a word)') do
    check1 = Anagram.new('dfg', 'cat')
    expect(check1.evaluator('dfg', 'cat')).to(eq("no vowel"))
    end
    it("should tell the user that single-letter words can't be anagrams") do
    check2 = Anagram.new('a', 'a')
    expect(check2.evaluator('a', 'a')).to(eq("too short"))
    end
    it("should be able to determine that two words that don't have the same number of letters can't be anagrams") do
    check3 = Anagram.new('dag', 'gian')
    expect(check3.evaluator('dag', 'gian')).to(eq("neither"))
    end
    it("should be able to determine whether two words are anagrams") do
    check4 = Anagram.new('train', 'intra')
    expect(check4.evaluator('train', 'intra')).to(eq("yes anagram"))
    end
    it("should be able to determine whether two words are anagrams regardless of capitalization") do
    check5 = Anagram.new('train', 'Intra')
    expect(check5.evaluator('train', 'Intra')).to(eq("yes anagram"))
    end
    it("should be able to determine whether two words are not anagrams") do
    check6 = Anagram.new('traim', 'intra')
    expect(check6.evaluator('traim', 'intra')).to(eq("neither"))
    end
    it('should be able to compare one phase with another to determine if they are anagrams of each other') do
    check7 = Anagram.new('lair nana', 'railnaan')
    expect(check7.evaluator('lair nana', 'rail naan')).to(eq("yes anagram"))
    end
    it('should be able to compare one phase with another to determine if they are anagrams of each other') do
    check8 = Anagram.new('dogs and cats', 'catsan dogsd')
    expect(check8.evaluator('dogs and cats', 'catsan dogsd')).to(eq("yes anagram"))
    end
    it('should be able to determine if the two inputs from the user have no characters in common') do
    check9 = Anagram.new("hi there", "boy o boy")
    expect(check9.evaluator("hi there!", "boy o boy")).to(eq("yes antigram"))
    end
end

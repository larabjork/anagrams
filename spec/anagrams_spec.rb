require('rspec')
require('pry')
require('anagrams')

describe('#evaluator') do

    it('should find out whether an entry has no vowels (and therefore is not a word)') do
    check2 = Anagram.new('dfg', 'cat')
    expect(check2.evaluator('dfg', 'cat')).to(eq("no vowel"))
    end
    it("should tell the user that single-letter words can't be anagrams") do
    check3 = Anagram.new('a', 'a')
    expect(check3.evaluator('a', 'a')).to(eq("too short"))
    end
    it("should be able to determine that two words that don't have the same number of letters can't be anagrams") do
    check5 = Anagram.new('dag', 'gian')
    expect(check5.evaluator('dag', 'gian')).to(eq("not anagram"))
    end
    it("should be able to determine whether two words are anagrams") do
    check6 = Anagram.new('train', 'intra')
    expect(check6.evaluator('train', 'intra')).to(eq("yes anagram"))
    end
    it("should be able to determine whether two words are not anagrams") do
    check7 = Anagram.new('traim', 'intra')
    expect(check7.evaluator('traim', 'intra')).to(eq("not anagram"))
    end
end

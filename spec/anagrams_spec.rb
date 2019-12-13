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
    expect(check3.evaluator('dag', 'gian')).to(eq("not anagram"))
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
    expect(check6.evaluator('traim', 'intra')).to(eq("not anagram"))
    end

end

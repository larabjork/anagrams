require('rspec')
require('pry')
require('anagrams')

describe('#evaluator') do
    it('should find out whether an entry has at least one vowel (and therefore is a word)') do
    check1 = Anagram.new('dog', 'cat')
    expect(check1.evaluator('dog', 'cat')).to(eq("yes word"))
    end
    it('should find out whether an entry has no vowels (and therefore is not a word)') do
    check2 = Anagram.new('dfg', 'cat')
    expect(check2.evaluator('dfg', 'cat')).to(eq("no vowel"))
    end
    it("should tell the user that single-letter words can't be anagrams") do
    check3 = Anagram.new('a', 'a')
    expect(check3.evaluator('a', 'a')).to(eq("too short"))
    end
    it("should be able to evaluate words of two or more letters") do
    check3 = Anagram.new('ag', 'an')
    expect(check3.evaluator('ag', 'an')).to(eq("yes word"))
    end
end

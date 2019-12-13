require('rspec')
require('pry')
require('anagrams')

describe('#evaluator') do
    it('should find out whether an entry has at least one vowel (and therefore is a word)') do
    check1 = Anagram.new('dog', 'cat')
    expect(check1.evaluator('dog', 'cat')).to(eq(true))
    end
    it('should find out whether an entry has no vowels (and therefore is not a word)') do
    check2 = Anagram.new('dfg', 'cat')
    expect(check2.evaluator('dfg', 'cat')).to(eq(false))
    end
end

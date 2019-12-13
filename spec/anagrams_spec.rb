require('rspec')
require('pry')
require('anagrams')

describe('#evaluator') do
    check1 = Anagram.new('dog', 'cat')
    it('should find out whether an entry has at least one vowel (and therefore is a word)') do
    expect(check1.evaluator('dog', 'cat')).to(eq(true))
    end
end

require('rspec')
require('pry')
require('anagrams')

describe('#evaluator') do
    check1 = Anagram.new('dog', 'cat')
    it('should find out whether an entry has no vowels (and therefore is not a word)') do
    expect(check1.evaluator()).to(eq(true))
    end
end

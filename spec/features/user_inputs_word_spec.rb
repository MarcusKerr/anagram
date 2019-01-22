# frozen_string_literal: true

require 'anagram'

describe Anagram do
  let(:anagram) { subject }

  it 'allows user to input a word to seach for anagrams' do
    expect(anagram.set_word('dog')).to_not raise_error
  end
end

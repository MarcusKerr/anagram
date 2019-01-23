# frozen_string_literal: true

require 'anagram'

describe Anagram do
  let(:anagram) { subject }

  it 'allows user to input a word to seach for anagrams' do
    anagram.upload_words('test_words.txt')
    expect { anagram.find('toga') }.to_not raise_error
  end
end

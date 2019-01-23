# frozen_string_literal: true

require 'anagram'

describe Anagram do
  let(:anagram) { subject }

  it 'returns the result to the user' do
    anagram.upload_words('test_words.txt')
    expect(anagram.find('toga')).to eq ['goat']
    expect { anagram.find('') }.to raise_error(Anagram::NO_MATCH_ERROR)
  end
end

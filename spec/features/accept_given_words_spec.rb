# frozen_string_literal: true

require 'anagram'

describe Anagram do
  let(:anagram) { subject }

  it 'allows the user to upload a file' do
    expect { anagram.upload('test_words.txt') }.to_not raise_error
  end
end

# frozen_string_literal: true

require 'anagram'

describe Anagram do
  let(:mock_word_extractor_instance) { double :word_extractor_instance, build_bank: mock_words_array, words: mock_words_array}
  let(:mock_words_array) { ["dog", "goat", "fish"] }
  let(:file_path) { 'test_words.txt' }
  let(:anagram) { described_class.new(mock_word_extractor_instance) }

  describe '#upload' do
    it 'delegates to Word Extractor' do
      expect(mock_word_extractor_instance).to receive(:build_bank).with(file_path)
      anagram.upload_words(file_path)
    end
  end

  describe '#find' do
    it 'returns a list of matched words' do
      anagram.upload_words(file_path)
      expect(anagram.find('god')).to eq ['dog']
    end
  end
end

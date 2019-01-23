# frozen_string_literal: true

require 'anagram'

describe Anagram do
  let(:mock_word_extractor_instance) { double :word_extractor_instance, build_bank: mock_words_array, words: mock_words_array }
  let(:mock_words_array)             { %w[dog goat fish] }
  let(:file_path)                    { 'test_words.txt' }
  let(:no_match_error)               { Anagram::NO_MATCH_ERROR }
  let(:invalid_format_error)         { Anagram::INVALID_FORMAT_ERROR }
  let(:anagram)                      { described_class.new(mock_word_extractor_instance) }

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

    context 'word is not included' do
      it 'raises mo match error error' do
        anagram.upload_words(file_path)
        expect { anagram.find('x') }.to raise_error(no_match_error)
      end
    end

    context 'word is of invalid format' do
      it 'raises invalid format error' do
        anagram.upload_words(file_path)
        expect { anagram.find('a1') }.to raise_error(invalid_format_error)
      end
    end
  end
end

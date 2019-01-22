# frozen_string_literal: true

require 'word_extractor'

describe WordExtractor do
  let(:word_extractor) { subject }
  describe '#build_bank' do
    it('returns array of unique sorted words') do
      word_extractor.build_bank('test_words.txt')
      expect(word_extractor.words).to eq %w[dog goat]
    end

    it('raises error if file cannot be found') do
      expect { word_extractor.build_bank('no file') }.to raise_error('This file does not exist')
    end
  end
end

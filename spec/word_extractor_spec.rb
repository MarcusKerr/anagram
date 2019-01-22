# frozen_string_literal: true

require 'word_extractor'

describe WordExtractor do
  let(:word_extractor) { subject }
  describe '#build_bank' do
    it('returns array of words') do
      word_extractor.build_bank('test_words.txt')
      expect(word_extractor.words[0]).to eq 'dog'
    end
  end
end

# frozen_string_literal: true

# frozen_string_lieral: true

require 'anagram'

describe Anagram do
  let(:mock_word_extractor_instance) { double :word_extractor_instance }
  let(:mock_file_path) { 'filepath.txt' }
  let(:anagram) { described_class.new(mock_word_extractor_instance) }

  describe '#upload' do
    it 'delegates to Word Extractor' do
      expect(mock_word_extractor_instance).to receive(:build_bank).with(mock_file_path)
      anagram.upload(mock_file_path)
    end
  end
end

# frozen_string_literal: true

require_relative 'word_extractor'
class Anagram
  def initialize(word_extractor = WordExtractor.new)
    @word_extractor = word_extractor
  end

  def upload_words(filename)
    @word_extractor.build_bank(filename)
  end
end

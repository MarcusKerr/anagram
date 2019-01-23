# frozen_string_literal: true

require_relative 'word_extractor'
class Anagram
  def initialize(word_extractor = WordExtractor.new)
    @word_extractor = word_extractor
  end

  def upload_words(filename)
    @word_extractor.build_bank(filename)
  end

  def find(word)
    set_defaults(word)
    while @starting_index <= @ending_index
      this_word_num = get_numerical_value(@word_extractor.words[@starting_index])
      @matched_words << @word_extractor.words[@starting_index] if this_word_num == @word_num
      @starting_index += 1
    end
    matched_words
  end

  private 

  attr_reader :matched_words

  def set_defaults(word)
    @matched_words = []
    word = word.downcase
    @starting_index = @word_extractor.words.index { |word_item| word_item.length == word.length }
    @ending_index = @word_extractor.words.index { |word_item| word_item.length == word.length + 1 } || @word_extractor.words.length - 1
    @word_num = get_numerical_value(word)
  end

  def get_numerical_value(word)
    word.unpack('U*').sum
  end

end

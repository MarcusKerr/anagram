# frozen_string_literal: true

require_relative 'word_extractor'
class Anagram
  NO_MATCH_ERROR = 'No matches'
  INVALID_FORMAT_ERROR = 'Enter a valid word with no digits, special characters or spaces'

  def initialize(word_extractor = WordExtractor.new)
    @word_extractor = word_extractor
  end

  def upload_words(filename)
    @word_extractor.build_bank(filename)
  end

  def find(word)
    raise INVALID_FORMAT_ERROR unless valid?(word)

    set_defaults(word)
    while @starting_index <= @ending_index
      this_word_num = sort_word_letters(@word_extractor.words[@starting_index])
      @matched_words << @word_extractor.words[@starting_index] if this_word_num == @word_num
      @starting_index += 1
    end
    raise NO_MATCH_ERROR if @matched_words.empty?

    @matched_words
  end

  private

  def valid?(word)
    word.match? /\A[a-zA-Z'-]*\z/
  end

  def set_defaults(word)
    @matched_words = []
    word = word.downcase
    @starting_index = @word_extractor.words.index { |word_item| word_item.length == word.length }
    raise NO_MATCH_ERROR unless @starting_index

    @ending_index = @word_extractor.words.index { |word_item| word_item.length == word.length + 1 } || @word_extractor.words.length - 1
    @word_num = sort_word_letters(word)
  end

  def sort_word_letters(word)
    word.chars.sort.join('')
  end
end

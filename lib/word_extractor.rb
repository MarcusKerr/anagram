# frozen_string_literal: true

# Extract words from file and add to array
class WordExtractor
  attr_reader :words
  attr_accessor :words_file

  def initialize
    @words = []
  end

  def build_bank(file)
    exist?(file)
    @words_file.each { |line| @words << sanitize(line) }
    @words_file.close
    @words.uniq
    sort_by_length
  end

  private

  def exist?(file)
    @words_file = File.open(file, 'r')
  rescue Exception
    raise 'This file does not exist'
  end

  def sanitize(line)
    line.strip
  end

  def sort_by_length
    remove_whitespace
    @words.sort_by!(&:length)
  end

  def remove_whitespace
    @words.delete_at(0) if @words[0] == ''
  end
end

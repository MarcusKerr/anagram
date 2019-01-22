# frozen_string_literal: true

# Extract words from file and add to array
class WordExtractor
  attr_reader :words

  def initialize
    @words = []
  end

  def build_bank(file)
    words_file = File.open(file, 'r')
    words_file.each { |line| @words << sanitize(line) }
    words_file.close
  end

  def sanitize(line)
    line.delete("\n")
  end
end

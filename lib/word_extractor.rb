# frozen_string_literal: true

# Extract words from file and add to array
class WordExtractor
  attr_reader :words

  def initialize
    @words = []
  end

  def build_bank(file)
    begin
      words_file = File.open(file, 'r')
    rescue Exception
      raise 'This file does not exist'
    end
    words_file.each { |line| @words << sanitize(line) }
    words_file.close
  end

  def sanitize(line)
    line.delete("\n")
  end
end

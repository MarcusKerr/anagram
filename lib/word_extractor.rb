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
  end

  private 

  def exist?(file)
    begin
      @words_file = File.open(file, 'r')
    rescue Exception
      raise 'This file does not exist'
    end
  end

  def sanitize(line)
    line.delete("\n")
  end
end

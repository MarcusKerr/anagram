# frozen_string_literal: true

require './lib/anagram'

anagram = Anagram.new
STOPPING_CONDITION = 'STOP'

def enter_file
  loop do
    puts "Enter a file of words (to exit enter 'STOP'):"
    filename = gets.chomp
    break if filename == STOPPING_CONDITION

    begin
      anagram.upload_words(filename)
    rescue Exception => e
      puts e
    else
      enter_word
      break
    end
  end
end

def enter_word
  loop do
    puts "\nEnter your anagram (to exit enter 'STOP'):"
    word = gets.chomp
    break if word == STOPPING_CONDITION

    matched_words = anagram.find(word)
  rescue Exception => e
    puts e
  else
    puts "\nMatched anagrams of '#{word}' are:\n"
    matched_words.each do |word|
      puts word
    end
  end
end

enter_file

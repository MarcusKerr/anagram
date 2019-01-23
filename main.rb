# frozen_string_literal: true

require './lib/anagram'

anagram = Anagram.new

puts 'Enter a file of words:'
filename = gets.chomp
anagram.upload_words(filename)

loop do
  puts "\nEnter your anagram (to exit enter 'STOP'):"
  word = gets.chomp
  break if word == 'STOP'

  matched_words = anagram.find(word)
rescue Exception => e
  puts e
else

  if !matched_words.empty?
    puts "\nMatched anagrams of '#{word}' are:\n"
    matched_words.each do |word|
      puts word
    end
end

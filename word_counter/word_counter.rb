=begin
Program which displays all unique words 
in the user input and provides a count
of their occurances.
https://www.codecademy.com/courses/learn-ruby/lessons/create-a-histogram
=end

#get user input
puts "Input text: "
text = gets.chomp

#split input by spacing
words = text.split(" ")
#initialize frequency has with default count 0
frequencies = Hash.new(0)

#use each input word as key and increment value
words.each { |i| frequencies[i] += 1 }

#sort hash descending from highest word count
frequencies = frequencies.sort_by { |word, count| count }
frequencies.reverse!

#print histogram
frequencies.each do |word, count|
  puts word + " " + count.to_s
end

=begin
from https://www.codecademy.com/courses/learn-ruby/lessons/redacted/
with implemented modifications
=end

#collect user input
puts "Enter your text: "
text = gets.chomp
puts "Enter words to REDACT: "
redact = gets.chomp

#split input into arrays
words = text.split(" ")
redact_words = redact.downcase.split(" ")

#initialize empty string of redacted text
rtext = ''

#check each word of input to see if matches redacted list
words.each do |token|
  if redact_words.include?(token.downcase)
    rtext += "REDACTED"
  else
    rtext += token
  end
  rtext += " " 
end

#print redacted text
puts "Message: #{rtext}"

=begin
Sorts an array alphabetically and in reverse
From Learn Ruby on Codeacademy
https://www.codecademy.com/courses/learn-ruby/lessons/ordering-your-library/
=end

#method alters passed in array
def alphabetize (arr, reverse = false)
  if reverse
  	arr.sort! { |first, second| second <=> first}
  else
    arr.sort!
  end
end
  
books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts alphabetize(books, true)
puts alphabetize(books)

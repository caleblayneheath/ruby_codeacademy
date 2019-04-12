=begin
sample simple CRUD app for movie reviews, refactored to use methods
https://www.codecademy.com/courses/learn-ruby/lessons/a-night-at-the-movies
=end

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

def print_commands
  puts "\nWelcome to the movie reviewer, which can ..."
  puts "-- \"Add\" a new movie and rating"
  puts "-- \"Delete\" a movie and its rating"
  puts "-- \"Display\" all movies and their ratings"
  puts "-- \"Update\" a movie's rating"
  puts "-- \"Quit\" the reviewer"
end

def new_rating(movie_list, title)
  puts "Please enter a rating for '#{title}'"
  rating = gets.chomp
  movie_list[title.to_sym] = rating.to_i
end

def add_movie(movie_list)
  puts "\nPlease enter a new title to rate"
  title = gets.chomp
  if movie_list[title.to_sym]
    puts "'#{title}' is already rated #{movie_list[title.to_sym]}."
    puts "Please use \"update\" to change rating."
  else
    new_rating(movie_list, title)
  end
end

def delete_movie(movie_list)
  puts "\nPlease enter a title to delete"
  title = gets.chomp
  unless movie_list[title.to_sym]
    puts "I have no record of '#{title}'"
  else
    movie_list.delete(title.to_sym)
    puts "'#{title}' deleted"
  end
end

def display_movie(movie_list)
  puts "\nTitle: Rating"
  movie_list.each { |title, rating| puts "#{title}: #{rating}"}
end

def update_movie(movie_list)
  puts "\nPlease enter a title to update"
  title = gets.chomp
  unless movie_list[title.to_sym]
    puts "I have no record of '#{title}'"
  else
    new_rating(movie_list, title)
  end
end

while true
  print_commands
  #get user input of add, delete, display, or update
  choice = gets.chomp.downcase
  case choice
  #add movies and reviews
  when 'add'
    add_movie(movies)
  when 'delete'
    delete_movie(movies)
  when 'display'
    display_movie(movies)
  #updates title if present
  when 'update'
    update_movie(movies)
  #breaks loop and quits program
  when 'quit'
		puts "\nGoodbye!"
    break
  #loop restarts and user can retry
  else
    puts "\nI didn't understand that. Please try again."
  end
end

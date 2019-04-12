=begin
simple CRUD app for movie reviews
https://www.codecademy.com/courses/learn-ruby/lessons/a-night-at-the-movies
=end

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

while true
  puts "Welcome to the movie reviewer, which can ..."
  puts "-- \"Add\" a new movie and rating"
  puts "-- \"Delete\" a movie and its rating"
  puts "-- \"Display\" all movies and their ratings"
  puts "-- \"Update\" a movie's rating"
  puts "-- \"Quit\" the reviewer"

  #get user input of add, delete, display, or update
  choice = gets.chomp.downcase
  case choice
  #add movies and reviews
  when 'add'
    puts "\nPlease enter a new title to rate"
    title = gets.chomp
    if movies[title.to_sym]
      puts "'#{title}' is already rated #{movies[title.to_sym]}."
      puts "Please use \"update\" to change rating."
    else
      puts "Please enter a rating for #{title}"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  #deletion done
  when 'delete'
    puts "\nPlease enter a title to delete"
    title = gets.chomp
    unless movies[title.to_sym]
      puts "I have no record of '#{title}'"
    else
			movies.delete(title.to_sym)
      puts "'#{title}' deleted"
    end
  #shows all titles and ratings
  when 'display'
    puts "\nTitle: Rating"
    movies.each { |title, rating| puts "#{title}: #{rating}"}
  #updates title if present
  when 'update'
    puts "\nPlease enter a title to update"
    title = gets.chomp
    unless movies[title.to_sym]
      puts "I have no record of '#{title}'"
    else
      puts "Please enter a new rating for '#{title}'"
      rating = gets.chomp
      movies[title] = rating.to_i
    end
  #breaks loop and quits program
  when 'quit'
		puts "\nGoodbye!"
    break
  #loop restarts and user can retry
  else
    puts "\nI didn't understand that. Please try again."
  end

  #puts spacing between new display of commands
  puts ""
end

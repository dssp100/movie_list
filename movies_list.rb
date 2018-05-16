# create a separator
def print_separator(character = "-") # character has a default value
  puts character * 42
end

# print the list
def print_list(movies)
  puts "Movie List:"
  print_separator()

  movies.each do |name, rating|
    puts "Movie Name: " + name.to_s + "\t\t" + "Rating: " + rating.to_s
  end
  print_separator()
end

movies = {
  Flipper: 4,
  Breaking_in: 5,
  Overboard: 4,
  Tully: 2,
  Avengers: 5
}
ask_again = true

while ask_again do
  puts "What do you want to do?"
  puts "'add' a new movie?"
  puts "'update' an existing movie?"
  puts "'display' all movies?"
  puts "'delete' a movie"
  puts "'end' the program"

  choice = gets.chomp

  case choice
    when "add"
      puts "Whats the name of the movie title?"
      title = gets.chomp
      if movies.key?(title.to_sym)
        puts "Ups that movie already exists"
      else
        puts "What is the rating of this movie?"
      rating = gets.chomp
        movies [title.to_sym] = rating.to_i
        puts "You have added #{title} to the library with a rating of #{rating}"
        puts
        print_list(movies)
      end
    when "update"
      puts "Whats the name of the movie title you want to update?"
      search_item = gets.chomp
      if movies.key?(search_item.to_sym)
        puts "Ok, found #{search_item}! What is the new rating?"
        new_rating = gets.chomp
        movies [title.to_sym] = new_rating.to_i
        puts "The rating of #{search_item} has been updated to #{new_rating}, check out the new list:"
        puts
        print_list(movies)
      else
        puts "Ups that movie does not exist"
      end
    when "display"
    	print_list(movies)
    when "delete"
      puts "Whats the name of the movie title you want to delete?"
      delete_item = gets.chomp
      if movies.key?(delete_item.to_sym)
        movies.delete(delete_item.to_sym)
      	puts "#{delete_item} has been deleted! Check out the new list:"
        puts
        print_list(movies)
      else
        puts "Ups that movie does not exist"
      end
    when "end"
      puts "Ended program"
      break
    else
    	puts "Error!"
  end
end

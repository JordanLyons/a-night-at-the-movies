movies = {  #Movie title => Rating in stars
    spartacus: 4,
    sound_of_Music: 5,
    texas_Chainsaw_Massacre: 3
}

puts "What would you like to do?"
choice = gets.chomp

case choice
when "add"
  puts "Enter title:"
  title = gets.chomp
  if movies[title.to_sym] != nil
      puts "Already entered!"
  else
      puts "How would you rate the movie?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
  end
when "update"
  puts "Enter title:"
  title = gets.chomp
  if movies[title.to_sym] = nil
      puts "Error. Not in memory."
  else
      puts "New rating:"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "#{title} has been updated with new rating of #{rating}."
  end
when "display"
  movies.each do |movie, rating|
  puts "#{movie}: #{rating}"
  end
when "delete"
  puts "Select title to delete."
  title = gets.chomp
  if movies[title.to_sym] = nil
    puts "Error. Movie not in hash."
  else
    movies.delete(title)
    puts "Movie deleted."
  end
else
  puts "Error!"
end

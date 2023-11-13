movies = {
    the_shawshank_redemption: 9.3,
    the_godfather: 9.2,
    the_dark_knight: 9.0,
    pulp_fiction: 8.9,
    schindlers_list: 8.9,
    forrest_gump: 8.8,
    the_lord_of_the_rings_return_of_the_king: 8.9,
    the_matrix: 8.7,
    the_silence_of_the_lambs: 8.6,
    inception: 8.8
}
puts "Your Options are: add, update, display, delete"

puts "Make your Selection"
choice = gets.chomp.downcase

case choice
  when "add"
    puts "What's the title"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "What's the rating?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i 
    else
      puts "That Movie Already Exists"
    end
  when "update"
    puts "What title would you like to update?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie doesn't exist"
    else
      puts "What rating are you updating to?"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
    end
  when "display"
    movies.each do |m, r|
      puts "#{m}: #{r}"
    end
  when "delete"
    puts "What movie(Title) would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "That movie doesn't exist already"
    else
      movies.delete(title.to_sym)
    end
  else
    puts "Error"
end
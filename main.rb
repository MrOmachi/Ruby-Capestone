require './app'

def display_options
  options = { 1 => 'List all books', 2 => 'List all music albums', 3 => 'List of games',
              4 => 'List all genres', 5 => 'List all labels', 6 => 'List all authors',
              7 => 'List all sources', 8 => 'Add a book', 9 => 'Add a music album',
              10 => 'Add a game', 11 => 'Exit' }
  options.each { |key, value| puts "#{key} - #{value}\n" }
  choice = gets.chomp.to_i

  # list_all_books if choice == 1
  # list_all_music_albums if choice == 2
  # list_of_games if choice == 3
  # list_all_genres if choice == 4
  # list_all_labels if choice == 5
  # list_all_authors if choice == 6
  # list_all_sources if choice == 7
  # add_a_book if choice == 8
  # add_a_music_album if choice == 9
  # add_a_game if choice == 10
  # exit if choice == 11
end

# def choose_option(choice)
#   case choice
#   when 1
#     list_all_books
#   when 2
#     list_all_music_albums
#   when 3
#     list_of_games
#   when 4
#     list_all_genres
#   when 5
#     list_all_labels
#   when 6
#     list_all_authors
#   when 7
#     list_all_sources
#   when 8
#     add_a_book
#   when 9
#     add_a_music_album
#   when 10
#     add_a_game
#   else
#     exit
#   end
# end

# def choose_option(choice)
#   list_all_books if choice == 1
#   list_all_music_albums if choice == 2
#   list_of_games if choice == 3
#   list_all_genres if choice == 4
#   list_all_labels if choice == 5
#   list_all_authors if choice == 6
#   list_all_sources if choice == 7
#   add_a_book if choice == 8
#   add_a_music_album if choice == 9
#   add_a_game if choice == 10
#   break if choice == 11
# end

def main
  app = App.new
  app.run
end

main

require './app'

def user_select
  choice = gets.chomp.to_i
  choose_option(choice)
end

def choose_option(choice)
  case choice
  when 1
    list_all_books
  when 2
    list_all_music_albums
  when 3
    list_of_games
  when 4
    list_all_genres
  when 5
    list_all_labels
  when 6
    list_all_authors
  when 7
    list_all_sources
  when 8
    add_a_book
  when 9
    add_a_music_album
  when 10
    add_a_game
  else
    exit
  end
end

def promt
  choose_option
end

def main
  app = App.new
  app.run
end

main

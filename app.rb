require_relative './main'

class App
  def initialize
    @books = []
    @labels = []
    @source = []
    @music_album = []
    @games = []
    @genre = []
    @authors = []
  end

  def run
    promt
  end

  def list_all_books
    puts 'List all books'
  end

  def list_all_music_albums
    puts 'list_all_music_albums'
  end

  def list_of_games
    puts 'list_of_games'
  end

  def list_all_genres
    puts 'list_all_genres'
  end

  def list_all_labels
    puts 'list_all_labels'
  end

  def list_all_authors
    puts 'list_all_authors'
  end

  def list_all_sources
    puts 'list_all_sources'
  end

  def add_a_book
    puts 'add_a_book'
  end

  def add_a_music_album
    puts 'add_a_music_album'
  end

  def add_a_game
    puts 'Add a game'
  end
end

require './module/game_module'
require_relative './module/author_module'

class App

include GameModule
include DataStorage


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
    display_options
  end

  def list_all_books
    puts 'List all books'
  end

  def list_all_music_albums
    puts 'list_all_music_albums'
  end

  def list_of_games
    list_game
  end

  def list_all_genres
    puts 'list_all_genres'
  end

  def list_all_labels
    puts 'list_all_labels'
  end

  def list_all_authors
    list_authors
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
    add_game
  end
end

require './class/book'
require './class/label'
require_relative './data_storage'
module BookModule
include DataStorage

  def add_books
    book = load_storage('books')
    publish_date = ask_publish_date
    archived = ask_archived
    cover_state = ask_cover_state
    publisher = ask_publisher
    book = Book.new(publisher, cover_state, publish_date)
    @books.push(book)
    book_data = {publish_date: book.publish_date, publisher: book.publisher, cover_state: book.cover_state, archived: book.archived }
    update_storage('books', book_data)
    label = load_storage('labels')
    title = ask_title
    color = ask_color
    label = Label.new(title, color)
    label_data = {title: label.title, color: label.color }
    @labels.push(label)
    update_storage('labels', label_data)
    puts 'BOOK AND LABEL CREATED SUCCESSFULLY'
    puts "\n"
  end

  def list_books
    books = load_storage('books')
    puts 'No Books: ' if books.length.zero?
    books.each do |book|
      puts "Publish_date: #{book['publish_date']}, cover_state: #{book['cover_state']}", "Publisher: #{book['publisher']}, Archived: #{book['archived']}"
    end
    puts "\n"
  end

  def list_label
    labels = load_storage('labels')
    puts 'No label: ' if labels.length.zero?
    labels.each do |label| 
        puts "Title: #{label['title']}, Color: #{label['color']}" 
    end    
    puts "\n"
  end

  def ask_cover_state
    print 'Type cover state: '
    gets.chomp
  end

  def ask_publisher
    print 'Publisher: '
    gets.chomp
  end

  def ask_publish_date
    puts 'Type publish date'
    print 'Publish date [dd-mm-yyyy]: '
    gets.chomp
  end

  def ask_archived
    puts 'Select if is already archived'
    print 'Is archived? [Yy/Nn]: '
    gets.chomp
  end

  def ask_title
    print 'Type title: '
    gets.chomp
  end

  def ask_color
    print 'Type color: '
    gets.chomp
  end
end

# def list_all(arr, label)
#     puts ''
#     puts "List of all #{label}"
#     puts 'id | label | author | genre | source'
#     puts '____________________________________'
#     arr.each do |item|
#       print "#{item.id} | "
#       print "[#{item.label.color}] "
#       print "#{item.label.title} | "
#       print "#{item.author.name} "
#       print "#{item.author.last_name} | "
#       print "#{item.genre.name} | "
#       print "#{item.source.name} \n"
#     end
#     run
# end
def display_options
  options = [
    '1. List all books',
    '2. List all music albums',
    '3. List of games',
    "4. List all genres (e.g 'Comedy', 'Thriller')",
    "5. List all labels (e.g. 'Gift', 'New')",
    "6. List all authors (e.g. 'Stephen King')",
    "7. List all sources (e.g. 'From a friend', 'Online shop')",
    '8. Add a book',
    '9. Add a music album',
    '10. Add a movie',
    '11. Add a game',
    '12. Exit'
  ]
  puts options

  choice = gets.chomp.to_i
  puts choice
end

def main
  display_options
end

main

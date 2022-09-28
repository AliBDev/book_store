# file: app.rb

require_relative "lib/database_connection.rb"
require_relative "lib/book_repository.rb"

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('book_store')

book_repository = BookRepository.new

book_repository.all.each{ |record| 
  puts "#{record.id} - #{record.title} - #{record.author_name}" 
}
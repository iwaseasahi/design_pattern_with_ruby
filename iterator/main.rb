require_relative 'book'
require_relative 'book_shelf'

class Main
  book_shelf = BookShelf.new
  book_shelf.push(Book.new('本1'))
  book_shelf.push(Book.new('本2'))
  book_shelf.push(Book.new('本3'))
  book_shelf.each { |book| puts book.name }
end

require_relative 'book'
require_relative 'book_shelf'

class Main
  book_shelf = BookShelf.new
  book_shelf.append_book(Book.new('本1'))
  book_shelf.append_book(Book.new('本2'))
  book_shelf.append_book(Book.new('本3'))

  iterator = book_shelf.iterator
  while iterator.has_next?
    book = iterator.next
    puts book.name
  end
end

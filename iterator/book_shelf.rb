require_relative '../iterator/book_shelf_iterator'

class BookShelf < BookShelfIterator
  def initialize
    @books = []
  end

  def get_book_at(index)
    @books[index]
  end

  def append_book(book)
    @books << book
  end

  def get_length
    @books.length
  end

  def iterator
    BookShelfIterator.new(self)
  end
end

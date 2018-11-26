require_relative '../iterator/iterator'

class BookShelf < Iterator
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
    Iterator.new(self)
  end
end

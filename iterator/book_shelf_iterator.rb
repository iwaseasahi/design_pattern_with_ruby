require_relative '../iterator/iterator'

class BookShelfIterator < Iterator
  def initialize(books)
    @books = books
    @index = 0
  end

  def has_next?
    @index < @books.get_length
  end

  def next
    book = self.has_next? ? @books.get_book_at(@index) : nil
    @index += 1
    book
  end
end

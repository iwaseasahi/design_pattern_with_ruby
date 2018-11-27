require_relative '../iterator/iterator'

class BookShelfIterator < Iterator
  def initialize(book)
    @book = book
    @index = 0
  end

  def has_next?
    @index < @book.get_length
  end

  def next
    book = self.has_next? ? @book.get_book_at(@index) : nil
    @index += 1
    book
  end
end

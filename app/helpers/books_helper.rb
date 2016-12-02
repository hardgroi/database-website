module BooksHelper

  # Methods to manually handle joins
  def get_author(isbn)
    return Author.find(BookAuth.find_by(book_id: isbn).author_id)
  end

  def get_publisher(isbn)
    return Publisher.find(BookPub.find_by(isbn_id: isbn).publisher_id)
  end

  def get_category(isbn)
    return BookCategory.find_by(isbn_id: isbn).category
  end
end

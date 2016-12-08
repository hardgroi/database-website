module BooksHelper

  # Methods to manually handle joins
  def get_author(isbn)
    authors = Array.new
    author_ids = BookAuth.where(book_id: isbn)
    author_ids.each do |id|
      authors.push Author.find(id.author_id)
    end
    return authors
  end

  def get_publisher(isbn)
    return Publisher.find(BookPub.find_by(isbn_id: isbn).publisher_id)
  end

  def get_category(isbn)
    return BookCategory.find_by(isbn_id: isbn).category
  end
end

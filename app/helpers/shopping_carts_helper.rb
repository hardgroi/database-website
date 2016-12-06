module ShoppingCartsHelper

  def get_book_title(isbn)
    return Book.find_by(isbn: isbn).title
  end

  def get_book_author(isbn)
    return Author.find(BookAuth.find_by(book_id: isbn).author_id)
  end

  def get_book_publisher_name(isbn)
    return Publisher.find(BookPub.find_by(isbn_id: isbn).publisher_id).pub_name
  end

  def get_item_quantity(id)
    return CartInfo.find_by(shopping_cart_id: id).item_quantity
  end

  def get_book_price(isbn)
    return Book.find_by(isbn: isbn).price
  end
end

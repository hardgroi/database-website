class BooksController < ApplicationController

  def index
    if params[:search]
      @books = Book.search(params[:search])
    else
      @books = Book.all
    end
  end

  def show
    @book = Book.find(params[:isbn])
    # Book->Publisher table join
    publisher_id = BookPub.find_by(isbn_id: @book.isbn).publisher_id
    @publisher = Publisher.find(publisher_id)
    # Book->Author table join
    author_id = BookAuth.find_by(book_id: @book.isbn).author_id
    @author = Author.find(author_id)
  end

end

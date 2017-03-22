class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new; end

  def create
    Book.create(book_params)
    redirect_to "/books"
  end

  def find
    @book_details = Book.find(params["id"])
  end

  def edit
    @book = Book.find(params["id"])
  end

  def update
    @book = Book.find(params["id"])
    @book.update(book_params)
    @book.save
    redirect_to "/books"
  end

  def delete
    @book_to_delete = Book.find(params["id"])
    @book_to_delete.destroy
  end

  private def book_params
    params.require("book").permit("name", "isbn", "description")
  end
end

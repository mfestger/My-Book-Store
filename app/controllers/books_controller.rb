class BooksController < ApplicationController

  def show
    @book = Book.find(params[:id])
  end


  def new
  end

  def create
    @book = Book.new(book_params)

    @book.save
    redirect_to @books
  end

  private
  def book_params
    params.require(:book).permit(:title, :description)
  end
end

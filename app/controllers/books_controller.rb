class BooksController < ApplicationController

  def new
   @book = Book.new
  end

  def index
  end

  def show
  end

  def edit
  end
  
  def create
    @book = Book.new(book_params)
     @book.save
     redirect_to books_path
  end 
  
  
  private
    def book_params
      params.permit(:title, :body)
    end
  
end
class BooksController < ApplicationController

  def new
    @book = Book.new
  end

  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
    @book = Book.new
    @books = Book.find(params[:id])
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book), notice: "You have created book successfully."
    else
      @books = Book.all
      render 'index'
    end
  end


  private
    def book_params
    params.require(:book).permit(:title, :body)
    end

end
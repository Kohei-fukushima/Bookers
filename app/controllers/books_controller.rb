class BooksController < ApplicationController

  def create
    flash[:notice] = "Book was successfully created."
    @book = Book.new
    if @book.save
        redirect_to book_path(book.id)
    else render :index
    end
  end


  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

 def update
   flash[:notice] = "Book was successfully created."
   book = Book.find(params[:id])
   book.update(book_params)
   redirect_to book_path(book.id)
 end

 def destroy
   flash[:notice] = "Book was successfully deleted."
   book = Book.find(params[:id])
   book.destroy
   redirect_to books_path
 end




end



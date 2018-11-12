class BooksController < ApplicationController
 
  def book_search
    if params[:book_search][:keyword].present? 
      @books = Book.tagged_with(params[:book_search][:keyword])
    end
  end

  def show
    @book = Book.find(params[:id])
  end

end
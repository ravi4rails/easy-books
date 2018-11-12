class BookCategoriesController < ApplicationController
  layout 'user_layout'
  def show
    @book_category = BookCategory.find(params[:id])
    @books = @book_category.books
  end

end

class HomeController < ApplicationController
  def index
  end

  def autocomplete
    @book_keyword = Book.all.map {|p| p.keyword_list}.flatten.compact.uniq
    respond_to do |format| 
      format.json { render json: @book_keyword.map {|key| key.capitalize} }
    end
  end

end

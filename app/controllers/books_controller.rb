class BooksController < ApplicationController
 before_action :signed_in_user
def new
  @book = book.new
end
 def create
    @book = current_user.books.build(book_params)
    if @book.save     
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end

  private

    def book_params
      params.require(:book).permit(:isbn)
    end
end

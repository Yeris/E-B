class StaticPagesController < ApplicationController
  def home
  end

  def help
  end
  
  def about
  end
  
  def serch
   @books = Books.search(params[:search])
end
  
end

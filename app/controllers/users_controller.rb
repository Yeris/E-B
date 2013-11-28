class UsersController < ApplicationController
def new
    @user = User.new    
   

  end
  
  def show
    @user = User.find(params[:id])
  @books = @user.books.paginate(page: params[:page])

    @book = current_user.books.build if signed_in?

  end
  
 def create
    @user = User.new(user_params)
    if @user.save
    	sign_in @user
      redirect_to @user
    else
      render 'new'
    end
  end

 

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end

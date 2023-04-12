class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    user_params = params.require(:user).permit(:nick, :login, :email, :password)
    User.create user_params
    redirect_to root_path
  end

  def show
  end
end

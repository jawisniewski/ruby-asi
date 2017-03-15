class UsersController < ApplicationController
respond_to :html, :json

  def new
    @user = User.new    
  end

  def create
    @user = User.new(user_params)   
    if @user.save
      session[:user_id] = @user_id
      redirect_to root_url, notice: "Konto utworzone pomyślnie"
    else
      render "new"
    end
  end
  
  private
  
  def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
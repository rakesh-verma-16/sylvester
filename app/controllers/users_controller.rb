class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :date_of_birth, :password, :description)
  end
end

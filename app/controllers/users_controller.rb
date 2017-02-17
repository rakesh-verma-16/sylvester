class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user), notice: "User Updated!"
    else
      render action "edit"
    end
  end


  def user_params
    params.require(:user).permit(:name, :email, :date_of_birth, :password, :description)
  end
end

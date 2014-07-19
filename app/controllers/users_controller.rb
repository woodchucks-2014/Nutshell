class UsersController < ApplicationController
include UsersHelper
  def index
    if current_user
      redirect_to nuts_path
    end
  end

  def login
    @user = User.find_by(username: params[:user][:username])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      # redirect_to user_path(@user), flash: {notice: "Successful log in!"}
      redirect_to nuts_path, flash: {notice: "Successful log in!"}
    else
      redirect_to users_path, flash: {notice: 'Invalid Credentials!' }
    end
  end

  def create
    @user = User.new(user_params(params))
    if @user.save
      session[:user_id] = @user.id
      # redirect_to user_path(@user), flash: {notice: 'Successful log in!'}
      redirect_to nuts_path, flash: {notice: "Successful log in!"}
    else
      redirect_to new_user_path, flash: {notice: 'Failed'}
    end
  end

  def show
    if !current_user
      redirect_to :root
    end
    p params
    @user = User.find(params[:id])
  end

  def destroy
    session.clear
    redirect_to :root
  end

 private

  def user_params(params)
    params.require(:user).permit(:first_name, :username, :email, :password, :password_confirmation)
  end

end

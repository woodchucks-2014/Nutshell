class NutsController < ApplicationController
  include UsersHelper
  include NutsHelper

  def index
    if current_user
      @user = User.find(session[:user_id])
      @nuts = Nut.all
    else
      redirect_to :root
    end
  end

  def new
    @user = current_user
  end

  def show
    @user = User.find(session[:user_id])
  end

  def create
    @user = current_user
    @nut = Nut.new(content: params[:content], url: params[:url], user_id: params[@user.id])
    if @nut.save
      redirect_to users_path(@user) flash: {notice: "You just created a Nutshell!"}
    else
      redirect_to new_nut_path
    end

  end
end

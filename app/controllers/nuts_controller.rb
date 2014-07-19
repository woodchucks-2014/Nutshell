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
    @user = User.find(session[:user_id])
  end

  def show
  end
end

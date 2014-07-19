class NutsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @nuts = Nut.all
  end
end

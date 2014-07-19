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
    # current_user
  end

  def show
  end

  def create
    # @nut = Nut.new(url: Cloudinary::Uploader.upload('')

    # if @nut.save
    if params[:image_id].present?
      preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
      raise "Invalid upload signature" if !preloaded.valid?
      @model.image_id = preloaded.identifier
    end
    @nut = Nut.new(url: preloaded.secure_url) #not finished need to add content
    if @nut.save
      redirect user_path(current_user)
    end
  end
end

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
    # @pictures = {}
    # @pictures = Cloudinary::Uploader.upload
    # @nut = Nut.new(url: Cloudinary::Uploader.upload('')
      # p params[:file]
    if params[:file].present?
      # p " you made it through the if statement"
      # @picture.url
      # p @picture = ActionController::Base.helpers.root_path(@picture)
      # preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
      # raise "Invalid upload signature" if !preloaded.valid?
      # @model.image_id = preloaded.identifier
      # p params[:setup][:file]
      # @image = Cloudinary::Uploader.upload(params[:file])
      # p @image
      # @picture = @image["secure_url"]
      @uploader = PictureUploader.new
      @uploader.store!('Yellow_Happy.jpg')
      @uploader.retrieve_from_store!('Yellow_Happy.jpg')
      redirect_to user_path(current_user)
    end

    # @nut = Nut.new(url: [@picture])
    # p @nut #not finished need to add content
    # @nut.url << @picture
    # if @uploader.save!
    #   redirect_to user_path(current_user)
    # end
  end


end

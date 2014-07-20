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

  def local_image_path(name)
      Rails.root.join('uploads', name).to_s
  end

  def create
    if params[:file].present?
      # preloaded = Cloudinary::PreloadedFile.new(params[:image_id])
      # raise "Invalid upload signature" if !preloaded.valid?
      # @model.image_id = preloaded.identifier
      # @image = Cloudinary::Uploader.upload(params[:file])
      # @picture = @image["secure_url"]
      # @uploader = PictureUploader.new
      # @uploader.store!(params[:file])
      # @uploader.retrieve_from_store!(params[:file])
      # redirect_to user_path(current_user)
    end
    config_path = File.expand_path(File.join(File.dirname(__FILE__), params[:file]))
    @nut = Nut.new
    @nut.picture = params[:file]
    p Rails.root
    path = (Rails.root + params[:file]).to_s
    path = local_image_path(params[:file])
    p path
    @image = Cloudinary::Uploader.upload(config_path)
    # @nut.picture = File.open('')
    # @nut.save!
    p @image["secure_url"]
    # p @nut #not finished need to add content
    # @nut.url << @picture
    # if @uploader.save!
    #   redirect_to user_path(current_user)
    # end
  end


end

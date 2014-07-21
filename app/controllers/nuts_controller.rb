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
    uploaded_picture = params[:picture]
    p "------------------------------"
    p filename = Rails.root.join('public', 'uploads', uploaded_picture.original_filename)
    p "-------------------------------"
    File.open(filename, 'wb') do |file|
      file.write(uploaded_picture.read)
    end
# Insert code here to send to
    p "------------------------------"
  p image = Cloudinary::Uploader.upload(filename)
    p "------------------------------"
  @nut = Nut.new(url: [image["secure_url"]], user_id: current_user.id)
    if @nut.save
      redirect_to nuts_path
    else
      redirect_to user_path
    end
  end
end

class NutsController < ApplicationController
  include UsersHelper
  include NutsHelper

  def index
    if current_user
      @user = User.find(session[:user_id])
      @nuts = Nut.all.reverse
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
    uploaded_picture = params[:picture]
    filename = Rails.root.join('public', 'uploads', uploaded_picture.original_filename)
    File.open(filename, 'wb') do |file|
      file.write(uploaded_picture.read)
    end
    image = Cloudinary::Uploader.upload(filename)
    @nut = Nut.new(url: [image["secure_url"]], user_id: current_user.id, content: params[:content])
    if @nut.save
      FileUtils.rm_rf(filename)
      redirect_to nuts_path
    else
      redirect_to user_path
    end
  end

  def edit
    @nut = Nut.find(params[:id])
  end

  def update
    @nut = Nut.find(params[:id])

    if @nut.update(content: params[:content])
      redirect_to nuts_path
    else
      render 'edit'
    end
  end

  def destroy
    current_user
    @nut = Nut.find(params[:id])
    @nut.destroy

    redirect_to nuts_path
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end

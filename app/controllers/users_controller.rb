class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @user = User.find(params[:id])
    # if @user.avatar != params[:avatar] && @user.avatar != "default_avatar.jpg"
    #   img_file = File.open(@user.avatar, "w+")
    #   if !img_file.nil?
    #     img_file.f
    # end
    if @user.update_attributes(params[:user], :as => :admin)
      @user.avatar = params[:file]
      @user.avatar = File.open(ImageUploader.store_dir)
      @user.save!
      redirect_to users_path, :notice => 'User updated.'
    else
      redirect_to users_path, :alert => 'Unable to update user.'
    end
  end

  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => 'User deleted.'
    else
      redirect_to users_path, :notice => "Can't delete yourself."
    end
  end

end

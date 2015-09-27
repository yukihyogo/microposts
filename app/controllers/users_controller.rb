class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :followings, :followers]

  def show
   @microposts = @user.microposts
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
  end
  
  def update
    if @user.update(user_params)
      flash[:success] = "更新しました。"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def followings
    @users = @user.following_users
  end
  
  def followers
    @followings = @user.following_users
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation,
                                 :place, :profile)
  end

end

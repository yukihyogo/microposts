class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
#   @user = User.find(params[:id])
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
#    @user = User.find(params[:id])
  end
  
  def update
    
#    @user = User.find(params[:id])

#binding.pry

#    if @user.update_attributes(user_params)
    if @user.update(user_params)
      flash[:success] = "更新しました。"
      redirect_to @user
    else
      render 'edit'
    end
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

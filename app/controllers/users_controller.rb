class UsersController < ApplicationController
  
  def new 
    
  end
  
  def index
    @users = User.all
    @user = current_user
  end

  def show
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end


end

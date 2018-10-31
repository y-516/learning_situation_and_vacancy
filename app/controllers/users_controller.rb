class UsersController < ApplicationController
  def index
  end

  def show
    @current_user=User.find(current_user.id)
  end

  def edit
    @user =User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(current_user.id),notice:"プロフィールを編集しました"
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:curriculum,:learning_goal,:ability,:project)
  end
end

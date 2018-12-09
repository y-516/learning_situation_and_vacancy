class UsersController < ApplicationController
  before_action :current_user_check,only: [:edit,:update]
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
    if @user.update(user_params)
      redirect_to user_path(current_user.id),notice:"プロフィールを編集しました"
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:curriculum,:learning_goal,:ability,:project,:image,:image_cache,:position)
  end

  def current_user_check
      redirect_to seats_path,notice:"権限がありません" if current_user.id != params[:id].to_i
  end
end

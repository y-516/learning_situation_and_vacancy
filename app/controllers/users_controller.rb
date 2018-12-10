class UsersController < ApplicationController
  before_action :referer_check,only: [:edit,:update]
  def index
  end

  def show
    @current_user=User.find(current_user.id)
  end

  def edit
    @user =User.find(params[:id])
    @current_user=User.find(current_user.id)
  end

  def update
    @user = User.find(params[:id])
    if  @user.id == current_user.id
      if @user.update(user_params)
        redirect_to user_path(current_user.id),notice:"プロフィールを編集しました"
      else
        render "edit"
      end
    else
      if @user.update(user_params)
        redirect_to learners_path,notice:"#{@user.name}の役職を#{positioncolumn_change_number_to_string(@user.position)}にしました"
      else
        redirect_to user_path(current_user.id),notice:"更新失敗"
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:curriculum,:learning_goal,:ability,:project,:image,:image_cache,:position)
  end

  def referer_check
    url_check = request.referer
    if url_check.nil? then
      redirect_to seats_path,notice:"URLの直打ちは禁止です"
    end
  end

end

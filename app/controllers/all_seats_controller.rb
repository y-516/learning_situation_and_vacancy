class AllSeatsController < ApplicationController
  before_action:leader_check,only:[:edit,:update]
  before_action:set_all_seat,only:[:edit,:update,:destroy]
  def new
    @allseat = AllSeat.new
  end

  def create
    AllSeat.create(all_seat_params)
    redirect_to seats_path,notice:"全座席数を設定しました"
  end

  def destroy
    @allseat.destroy
    redirect_to new_all_seat_path,notice:"全座席数をリセットしました"
  end

  def edit
  end
  
  def update
    @allseat.update(all_seat_params)
    redirect_to new_all_seat_path, notice: "全座席数を変更しました"
  end

  private

  def all_seat_params
    params.require(:all_seat).permit(:number_of_seats)
  end

  def leader_check
    leader_check = User.find(current_user.id)
    redirect_to seats_path,notice:"一般ユーザーは座席数を変更できません" if leader_check.position == 0
  end

  def set_all_seat
    @allseat = AllSeat.find(params[:id])
  end
end

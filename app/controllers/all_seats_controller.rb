class AllSeatsController < ApplicationController
  before_action:leader_check,only:[:new]
  def new
  end

  def create
    @allseat =AllSeat.new
    @seats = params[:number_of_seats]
    @allseat.number_of_seats = @seats
    @allseat.save
    redirect_to seats_path
  end

  # def destroy
  #   @allseat = AllSeat.find(params[:id])
  #   @allseat.destroy
  #   redirect_to new_all_seat_path,notice:"全席数を削除しました"
  # end

  def edit
    @allseat = AllSeat.find(params[:id])
  end

  def update
    @allseat = AllSeat.find(AllSeat.first.id)
    @allseat.update(all_seat_params)
     redirect_to new_all_seat_path, notice: "席数を変更しました"
  end

  private

  def all_seat_params
    params.require(:all_seat).permit(:number_of_seats)
  end

  def leader_check
    leader_check = User.find(current_user.id)
    if leader_check.position == 0
      redirect_to seats_path,notice:"一般ユーザーは席数を変更できません"
    end
  end
end

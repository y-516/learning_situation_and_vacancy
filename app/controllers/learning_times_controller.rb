class LearningTimesController < ApplicationController
  before_action :seating_confirmation,only:[:new]

  def new
    @seat =Seat.new
  end

  def index
  end

  def create
    @seat = Seat.new(time_params)
    @current_user = User.find(current_user.id)
    @seat.user_id = @current_user.id
    if @seat.save
      redirect_to seats_path,notice:"着席しました。"
    else
      redirect_to new_learning_time_path,flash: { error: @seat.errors.full_messages }
    end
  end
end

private

def time_params
  params.require(:seat).permit(:learning_done)
end

def seating_confirmation
  current_user_id = current_user.id
  seat_user_id = Seat.find_by(user_id:current_user_id)
  if current_user_id == seat_user_id&.user_id
    redirect_to seats_path,notice:"既に着席しています"
  end
end

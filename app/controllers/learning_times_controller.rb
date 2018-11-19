class LearningTimesController < ApplicationController
  before_action :seating_confirmation,only:[:new]
  require "date"

  def new
    @seat =Seat.new
  end

  def index
  end

  def create
    @seat = Seat.new(time_params)
    # @seat.learning_start = DateTime.now
    @current_user = User.find(current_user.id)
    @seat.user_id = @current_user.id

    if @seat.save
      redirect_to seats_path,notice:"着席しました"
    else
      redirect_to new_learning_time_path,flash: { error: @seat.errors.full_messages }
    end

    # if @seat.save
    #   redirect_to seats_path,notice:"着席しました"
    # elsif Seat.where(user_id:@current_user.id)
    #   redirect_to seats_path,notice:"#{@current_user.name}は既に着席しています"
    # else
    #   redirect_to seats_path,notice:"eles処理"
    # end
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


# def learning_time(ending_time)
#   now_time = Time.now
#   difference = ending_time-now_time
#   return Time.at(difference).utc.strftime("時間の差は %H時 %M分 %S秒")
# end

# def new
#   gon.test=Time.local(2018,11,06,20,25)
# end

class LearningTimesController < ApplicationController
  require "date"
  def new
    @seat =Seat.new
  end

  def index
  end

  def create
    @seat = Seat.new(time_params)
    @seat.learning_start=DateTime.now
    @current_user = User.find(current_user.id)
    @seat.user_id = @current_user.id
    if @seat.save
      redirect_to seats_path
    else
      redirect_to seats_path,flash: { error: @seat.errors.full_messages}
    end
  end
end

private

def time_params
  params.require(:seat).permit(:learning_done)
end

# def learning_time(ending_time)
#   now_time = Time.now
#   difference = ending_time-now_time
#   return Time.at(difference).utc.strftime("時間の差は %H時 %M分 %S秒")
# end

# def new
#   gon.test=Time.local(2018,11,06,20,25)
# end

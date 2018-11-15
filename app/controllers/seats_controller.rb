class SeatsController < ApplicationController
  # def index
  #   time = Seat.select("id", "learning_done")
  #   gon.learning = time
  #   @count = Seat.count
  #   @study = User.where.not(seat_id: nil)
  # end

  def index
    @study = Seat.where("learning_done >= ?", DateTime.now)
    @timeup = Seat.where("learning_done <= ?", DateTime.now)
    @timeup.delete_all
    @study_count = Seat.count
  end

  def new
  end

  def create
    number_or_chairs = params[:num]
    $number_or_chairs = number_or_chairs.to_i
    redirect_to seats_path
  end

  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy
    redirect_to seats_path
  end


end

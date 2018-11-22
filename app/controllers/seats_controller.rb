class SeatsController < ApplicationController
  require 'date'
  def index
    @student_under_study = Seat.where("learning_done >= ?", DateTime.now).order('learning_done DESC')
    @time_up_learning_done = Seat.where("learning_done <= ?", DateTime.now)
    @time_up_learning_done.delete_all
    @all_seat_count = Seat.count
      if AllSeat.first.try(:number_of_seats)
      all_seat = AllSeat.first
      @all_seat = all_seat.number_of_seats.to_i
      end
  end

  def destroy
    @seat = Seat.find(params[:id])
    @seat.destroy
    redirect_to seats_path,notice:"お疲れ様でした"
  end
end

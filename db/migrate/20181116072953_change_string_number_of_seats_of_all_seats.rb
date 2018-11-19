class ChangeStringNumberOfSeatsOfAllSeats < ActiveRecord::Migration[5.1]
  def change
    change_column :all_seats, :number_of_seats,:string
  end
end

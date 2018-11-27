class AddNotNullNumberOfSeatsToAllSeats < ActiveRecord::Migration[5.1]
  def change
    change_column :all_seats, :number_of_seats,:string,null: false
  end
end

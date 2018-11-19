class AddDefaultNumbeOfSeatsToAllSeat < ActiveRecord::Migration[5.1]
  def change
    change_column :all_seats,:number_of_seats,:string,:default =>0
  end
end

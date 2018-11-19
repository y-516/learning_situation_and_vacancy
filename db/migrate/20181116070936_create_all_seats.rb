class CreateAllSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :all_seats do |t|
      t.integer :number_of_seats

      t.timestamps
    end
  end
end

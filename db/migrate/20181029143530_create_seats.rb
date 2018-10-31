class CreateSeats < ActiveRecord::Migration[5.1]
  def change
    create_table :seats do |t|
      t.time :learning_time
      t.integer :state

      t.timestamps
    end
  end
end

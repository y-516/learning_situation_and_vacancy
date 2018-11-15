class RemoveStateToSeat < ActiveRecord::Migration[5.1]
  def change
    remove_column :seats, :state, :string
    remove_column :seats, :learning_time, :time
  end
end

class ChangeColumnToUser < ActiveRecord::Migration[5.1]
  def change
    remove_foreign_key :users, :seats
    remove_index :users, :seat_id
    remove_reference :users, :seat
  end
end

class AddSeatIdToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :seat, foreign_key: true
  end
end

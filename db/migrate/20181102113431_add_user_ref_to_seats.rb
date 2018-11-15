class AddUserRefToSeats < ActiveRecord::Migration[5.1]
  def change
    add_reference :seats, :user, foreign_key: true
  end
end

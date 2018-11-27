class RemoveOfficeFromSeats < ActiveRecord::Migration[5.1]
  def change
    remove_column :seats, :office, :string
  end
end

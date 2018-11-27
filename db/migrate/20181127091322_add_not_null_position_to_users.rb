class AddNotNullPositionToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_null :users, :position, null: false
  end
end

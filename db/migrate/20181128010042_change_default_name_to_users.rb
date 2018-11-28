class ChangeDefaultNameToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column_default :users,:name,:""
  end
end

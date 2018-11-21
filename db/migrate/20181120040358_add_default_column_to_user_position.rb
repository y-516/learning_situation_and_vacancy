class AddDefaultColumnToUserPosition < ActiveRecord::Migration[5.1]
  def change
    change_column :users ,:position,:integer,default:0
  end
end

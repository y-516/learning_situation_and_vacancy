class AddDeaultToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column :users,:name,:string,null:false,default:"氏名記入"
  end
end

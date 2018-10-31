class AddColumnUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name,:string
    add_column :users, :curriculum ,:string
    add_column :users, :learning_goal,:string
    add_column :users, :ability,:string
    add_column :users, :project,:string
    add_column :users, :position,:integer
    add_column :users, :admin,:boolean
    add_column :users, :image,:string
  end
end

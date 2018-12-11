class RemoveNilToUser < ActiveRecord::Migration[5.1]
  def change
    change_column :users,:curriculum,:string,null: true,default:""
    change_column :users,:learning_goal,:string,null: true,default:""
    change_column :users,:ability,:string,null: true,default:""
    change_column :users,:project,:string,null: true,default:""
  end
end

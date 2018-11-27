class AddDeault4ColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column:users,:curriculum,:string,null:false,default:"学習内容記入"
    change_column:users,:learning_goal,:string,null:false,default:"学習目標記入"
    change_column:users,:ability,:string,null:false,default:"学習内容記入"
    change_column:users,:project,:string,null:false,default:"稼働案件状況記入"
    change_column:users,:admin,:boolean,null:false
  end
end

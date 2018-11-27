class AddNotNullLearningDoneToSeats < ActiveRecord::Migration[5.1]
  def change
    change_column :seats,:learning_done,:datetime,null:false
  end
end

class RemoveLearningStartFromSeats < ActiveRecord::Migration[5.1]
  def change
    remove_column :seats, :learning_start, :datetime
  end
end

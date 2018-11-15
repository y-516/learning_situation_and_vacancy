class RemoveTearningStartAndIearningDoneFromSeats < ActiveRecord::Migration[5.1]
  def change
    remove_column:seats,:learning_start
    remove_column:seats,:learning_done
  end
end

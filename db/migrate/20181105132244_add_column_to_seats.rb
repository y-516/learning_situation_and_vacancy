class AddColumnToSeats < ActiveRecord::Migration[5.1]
  def change
    add_column:seats,:learning_start,:datetime
    add_column:seats,:learning_done,:datetime
  end
end

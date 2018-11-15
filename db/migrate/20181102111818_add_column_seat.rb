class AddColumnSeat < ActiveRecord::Migration[5.1]
  def change
    add_column :seats,:learning_start,:time
    add_column :seats,:learning_done,:time
    add_column :seats,:office,:string
  end
end

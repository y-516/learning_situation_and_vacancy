class ChangeDefaultColumnAbilityToUsers < ActiveRecord::Migration[5.1]
  def change
    change_column:users,:ability,:string,default:"得意分野記入"
  end
end

class Seat < ApplicationRecord
  belongs_to :user
  validates :user_id,uniqueness:true
  validate :learning_done_check

  def learning_done_check
    if learning_done < DateTime.now
      errors.add(:learning_done,"は過去の日付を使用できません")
    end
  end
end

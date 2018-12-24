class Seat < ApplicationRecord
  belongs_to :user
  validates :user_id, uniqueness: true
  validate :learning_done_check

  def learning_done_check
      errors.add(:learning_done, "は過去の時間を使用できません") if learning_done < DateTime.now
  end
end

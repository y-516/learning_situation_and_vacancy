class Seat < ApplicationRecord
  belongs_to :user
  validates :user_id,uniqueness:true
  validate :learning_done_check

  def learning_done_check
    if learning_done < DateTime.now
      errors.add(:学習終了予定時刻は,"過去の日付を使用できません")
    end
  end
end

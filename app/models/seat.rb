class Seat < ApplicationRecord
  belongs_to :user
  validates :user_id,uniqueness:true
  # validate :check_count_of_seat
  validate :learning_done_check


  # def check_count_of_seat
  #   if Seat.count >= $number_or_chairs
  #     errors.add(:seat,"席いっぱい")
  #   end
  # end

  def learning_done_check
    if learning_done < DateTime.now
      errors.add(:学習終了予定時刻は,"過去の日付を使用できません")
    end
  end
end

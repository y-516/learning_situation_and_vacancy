class Seat < ApplicationRecord
  belongs_to :user
  validate :check_count_of_seat

  def check_count_of_seat
    if Seat.count >= $number_or_chairs
      errors.add(:まじで,"席いっぱい")
    end
  end
end

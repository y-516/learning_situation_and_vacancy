module ApplicationHelper
  def position_check_return_all_seats_new(current_user_id)
    current_user = User.find(current_user_id)
      link_to "座席数入力画面", new_all_seat_path if current_user.position == 1
  end
end

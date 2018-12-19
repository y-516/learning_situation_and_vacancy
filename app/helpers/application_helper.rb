module ApplicationHelper
  def position_check_return_all_seats_new(current_user_id)
    current_user = User.find(current_user_id)
    if current_user.position == 1
      link_to "座席数入力画面",new_all_seat_path
    end
  end
end

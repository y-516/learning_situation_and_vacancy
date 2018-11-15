module ApplicationHelper
  def positioncolumn_change_number_to_string (number)
    if number == 0
      return "一般"
    else
      return "リーダー"
    end
  end

end

module SeatsHelper
  def template_change_learning_done(time)
    return time.strftime("%H:%M")
  end
end

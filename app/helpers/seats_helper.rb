module SeatsHelper
  def template_change_learning_done(time)
    return time.strftime("%m月%d日%H:%M")
  end
end

module ApplicationHelper

  def info
    Date.today.strftime("%A") == @day ?  goodnews : badnews
  end

  def goodnews
    "Today is #{@day}, a great day."
  end

  def badnews
    "Today is not #{@day}, it's #{Date.today.strftime('%A').to_s}."
  end

  def result
    Date.today.strftime("%A") == @day ? "Yes!" : "No"
  end

  def stylesheet_mood
    result == "No" ? "default" : "sunny"
  end
end
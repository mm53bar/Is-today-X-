module ApplicationHelper

  def info
    Date.today.strftime("%A") == @day ? "Today is #{@day}, a great day." : "Today is not #{@day}, it's " + Date.today.strftime("%A").to_s + "."
  end

  def result
    Date.today.strftime("%A") == @day ? "Yes!" : "No"
  end

end
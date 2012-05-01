# We take the date from the hostname, strip things down,
# and compare it to today's day
class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :set_timezone

  def set_timezone
    Time.zone = 'Mountain Time (US & Canada)'
  end

  def get_host
    hostday = request.host
    hostday == "localhost" ? "Sunday" : strip_hostname
  end

  def strip_hostname
    hostday.gsub(/istoday/,"").gsub!(/.heroku.com/,"").capitalize.to_s
  end

  def index
    @day = get_host
    @slug = "Is today " + @day + "?"
    meter = Metriks.meter("IsToday#{@day}")
    meter.mark
  end
end
class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_timezone

  def set_timezone
    Time.zone = 'Mountain Time (US & Canada)'
  end
  
  def get_host
    hostday = request.host
    hostday == "localhost" ? "Sunday" : hostday.gsub(/istoday/,"").gsub!(/.heroku.com/,"").capitalize.to_s
  end
  
  def index
    @day = get_host
    @slug = "Is today " + @day + "?"
    
    respond_to do |format|
        format.html
        format.xml
    end
  end
  
end
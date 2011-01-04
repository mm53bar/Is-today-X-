class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :set_timezone

  def set_timezone
    # current_user.time_zone #=> 'London'
    Time.zone = 'Mountain Time (US & Canada)'
  end
  
  def index
    @day = "Saturday"
    
    respond_to do |format|
        format.html
        format.xml
    end
  end
  
end
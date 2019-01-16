class ApplicationController < ActionController::Base
  
  def logged_in?
    @current_user ||= session[:user_id] if session[:user_id]
  end

  helper_method :logged_in?
end

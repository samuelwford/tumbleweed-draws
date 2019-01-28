class ApplicationController < ActionController::Base
  def authorize
    redirect_to login_path unless logged_in?
  end

  def logged_in?
    @current_user ||= session[:user_id] if session[:user_id]
  end

  def in_the_backdoor?
    request.host_with_port.include? "herokuapp.com"
  end

  helper_method :in_the_backdoor?
  helper_method :logged_in?
end

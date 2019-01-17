class WelcomeController < ApplicationController
  def index
    @drawings = Drawing.all.order(created_at: :desc)
  end

  def authenticate
    params.permit(:password)
    
    if params[:password] == Rails.configuration.admin_password
      session[:user_id] = "tumbleweed"
      flash[:success] = "Logged in."
      redirect_to drawings_path
    else
      flash[:danger] = "Invalid password."
      redirect_to login_path
    end    
  end
  
  def logout
    session[:user_id] = nil
    flash[:warning] = "Logged out."
    redirect_to root_path
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper    # NEW LINE

  before_filter :require_login

private

  def require_login
    unless current_user
    	flash[:failure] = "You must log in to access that resource"
      redirect_to signin_path
    end
  end


  
end
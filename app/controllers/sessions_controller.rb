class SessionsController < ApplicationController
skip_before_filter :require_login

  def new
  end

def create
    user = User.find_by_email(params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user      # NEW LINE
      redirect_to root_path   
    else 
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

   def destroy
    sign_out
    redirect_to root_url
  end

  
end



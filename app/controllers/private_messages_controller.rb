class PrivateMessagesController < ApplicationController
 # before_filter :signed_in_user, only: [:create, :destroy]
 #include SessionsHelper


 
def new
  @private = PrivateMessage.new
  @users = []
     @users_all = User.all
     @users_all.each do |f|
     @users << [f.name, f.id]
    end
end

def index 
#current_user = User.find_by_remember_token(cookies[:remember_token])
#PrivateMessage.get_current_user(current_user)
  #key = 1

end

def show
  @message = PrivateMessage.find_by_id(params[:id])
  @sender = User.find_by_id(@message.sender)
end

def display_sent
  @user = current_user
  @sent_messages = @user.sent_messages#[]
 # @p = PrivateMessage.all
 # @sent = @p.each do |f|
 #   if f.sender ==  @user.id
 #   @sent_messages << f
 # else
 # end
 #  end


end

def display_received
  @user = current_user
#@sender = User.find_by_id(f.sender)
@received_messages = @user.received_messages
 #   @received = PrivateMessage.all.each do |f|
 #   if f.receiver == @user.id
 #     @received_messages << f
 #   else
 #     end
 #   end



  end

def create
  @users = []
     @users_all = User.all
     @users_all.each do |f|
     @users << [f.name, f.id]
    end
   @private = PrivateMessage.new(params[:private_message])
    if @private.save
      flash[:success] = "Message sent!" 
      redirect_to root_path
   else
      render 'new'
    end
  end
end

 
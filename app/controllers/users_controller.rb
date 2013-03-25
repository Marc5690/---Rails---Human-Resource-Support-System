class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts
  end

  def new
    @user = User.new
  end

def update
 # @x = params[:x]
@y = params[:y]
@x = params[:x]
@user = User.find_by_id(@y)

@user.update_column(:task_id,@x)

redirect_to root_path
#@x = params[:x]
#@y = params[:y]

#@t = User.find_by_id(1)
#@t.update_column(:task_id,1)
#@t.save

#@user = User.find_by_id(params[:y])
# @user.update_column(:task_id,@x)
#flash[:success] = "Success!"
 # else
  #  flash[:failure] = "Failed!"
  #end
 #  @user.save
#flash[:success] = "Success!"
#redirect_to root_path
#  else
 #   flash[:failure] = "Failed!"
  #  redirect_to root_path
  #end
#User.find_by_id(@y)

#@user.save
#@user.update_column(:user[0],:user[1])
#redirect_to root_path
#@y = params[:y]
#@x = params[:x]
#:user.save
#@user = User.find_by_id(params[:id])
#@user.update_column(:user[0], :user[1])

#redirect_to root_path
#@user.update_column(:task_id, @x)

  #redirect_to root_path
end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"    # NEW LINE
       redirect_to root_path
       #render :action => :mainmenu
       # render :controller => :static_pages :action => :menu
      #redirect_to menu_path#@user
    else
      render 'new'
    end
  end
end
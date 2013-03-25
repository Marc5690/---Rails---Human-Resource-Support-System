class PrivateMessagesController < ApplicationController
 # before_filter :signed_in_user, only: [:create, :destroy]
def new
  @private = PrivateMessage.new
  @receiver = params[:q]
end

def index 
end

def show
  @message = PrivateMessage.find_by_id(params[:id])
  @sender = User.find_by_id(@message.sender)
end

def display_sent
  @user = current_user
  @sent_messages = []
  @p = PrivateMessage.all
  @sent = @p.each do |f|
    if f.sender ==  @user.id
    @sent_messages << f
  else
  end
   end


end

def display_received
  @user = current_user
#@sender = User.find_by_id(f.sender)
@received_messages = []
    @received = PrivateMessage.all.each do |f|
    if f.receiver == @user.id
      @received_messages << f
    else
      end
    end



  end

def create
  #@receiver = params[:q]
   @private = PrivateMessage.new(params[:private_message])
   # @absence = Absence.new(params[:absence])
    if @private.save
      flash[:success] = "Message sent!" 
      redirect_to root_path
   else
      render 'new'
      #redirect_to root_path
    end
  end
end

 # def add
  #  @absence = Absence.new
  #  @current_emp = params[:q]#3
  #  #######@absence.user_id = @current_emp
  #end
  
#  def display
#   @user = User.find_by_id(params[:q])
#   @current_emp = params[:q]
#    @absences = @user.absences
#  end
  
  #def destroy
    #@absence = absence
   # @absence=Absence.find_by_id(params[:id])

    #if @absence.destroy
    #  flash[:success] = "Record deleted!" 
    #redirect_to root_url
  #else
 #   flash[:failure] = "An error occurred, the record was not deleted!" 
 #   redirect_to root_url
 # end
 # end

 # def menu
 # end
 
  #def create
  #  @current_emp = params[:q]
  # 
  #  @absence = Absence.new(params[:absence])
  #  if @absence.save
  #    flash[:success] = "Record added!" 
  #    redirect_to root_path
  # else
  #    render 'new'
  #  end
  #end

  #def show

  #end

  #def index

 # end
  

  #def searchadd
#    @user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
 
     # @current_emp2 = params[:q]


#  end
 
 # def searchview
 #    @user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
   
  #   @current_emp2 = params[:q]


 # end

#end
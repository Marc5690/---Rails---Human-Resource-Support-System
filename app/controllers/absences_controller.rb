class AbsencesController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def add
    @absence = Absence.new
    @current_emp = params[:q]#3
    #######@absence.user_id = @current_emp
  end
  
  def display
   @user = User.find_by_id(params[:q])
   @current_emp = params[:q]
    @absences = @user.absences

    
  end
  
  def destroy
    #@absence = absence
    @absence=Absence.find_by_id(params[:id])

    if @absence.destroy
      flash[:success] = "Record deleted!" 
    redirect_to root_url
  else
    flash[:failure] = "An error occurred, the record was not deleted!" 
    redirect_to root_url
  end
  end

  def menu
  end
 
  def create
    @current_emp = params[:q]
   
    @absence = Absence.new(params[:absence])
    if @absence.save
      flash[:success] = "Record added!" 
      redirect_to root_path
   else
      render 'new'
    end
  end

  def show

  end

  def index

  end
  

  def searchadd
    @user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
 
      @current_emp2 = params[:q]


  end
 
  def searchview
     @user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
   
     @current_emp2 = params[:q]


  end

end
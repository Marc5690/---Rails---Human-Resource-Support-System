class AbsencesController < ApplicationController
  include AbsencesHelper
  before_filter :signed_in_user, only: [:create, :destroy]

  def add
    @absence = Absence.new
    @current_emp = params[:q]

    #3
    #######@absence.user_id = @current_emp
  end
  
  def display
   @user = User.find_by_id(params[:q])
   @current_emp = params[:q]
    @absences = @user.absences.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')

    
  end


  def fill_absence
    @user = User.find(1)
    @absences = Absence.all
    @f = []
    @future = @absences.each do |f|
    if f.date.future?
      @f << f
    end
    end

@f.each do |f|
  if f.tempuser == @user.id
end
  end


  @user = User.find_by_id(1)
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
    flash[:failure] = "Record could not be created!" 
      redirect_to root_path
     # render 'new'
    end
  end

  def fill
    @absence = Absence.find_by_id(params[:absence_id])
    @available_employees = []
    @employees = []
    @user = @absence.user
    @task = @user.task
    @userall = User.all


#@user.temporary_positions.each do |temp| 
#    if temp.date != @absence.date 
#      return true
#     end
#   end

if @task

  @userall.each do |f|
  if f.skills.any? && !temporary_positions?(f, @absence) 
     f.skills.each do |g|     
         if @task.skills.any? && @task.skills.include?(g)#At this line, we have filtered through all users 
           @employees << f if f.task_id != @task.id      #to make sure that they have the right skills for the job,
         end                                             #do not have any other temporary positions on that day, and
     end                                                 #that they are not already assigned to that task.
  end
  end                                               
                                                         
      

  @employees.each do |f|#We then place this list of filtered employees into @available_employees to be use din the drop-down menu
      @available_employees << [f.name, f.id]
    end

else
#If the task does not exist, then we set the variables to nil.
@available_employees = nil
@employees = nil
end


  

  end

  def show

    @absence = Absence.find_by_id(params[:id])

  

  end

  def index

  end
  
  def update
@absence = Absence.find_by_id(params[:id])

if @absence.update_attributes(params[:absence])
#tempuser = params[:absence[:tempuser]]

    flash[:success] = "Successfully filled in absence!"

   redirect_to root_path
else 
   flash[:failure] = "Could not fill in absence!"

   redirect_to root_path
 end
  end

  def searchadd
    @user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
 
      @current_emp2 = params[:q]

      @userall = User.all
    @array = []

    @userall.each do |f|
      @array << [f.name, f.id]
    end


  end
 
  def searchview
     @user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
   
     @current_emp2 = params[:q]

       @userall = User.all
    @array = []

    @userall.each do |f|
      @array << [f.name, f.id]
    end


  end

end
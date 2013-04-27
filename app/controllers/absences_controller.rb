class AbsencesController < ApplicationController
  include AbsencesHelper
  before_filter :signed_in_user, only: [:create, :destroy]

  def search_employees_absence_add#Searchadd
    #@user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
 
     # @current_emp2 = params[:q]

      @userall = User.all
    @users = []

    @userall.each do |f|
      @users << [f.name, f.id]
    end


  end

  def new
   # if params[:employee_id] == nil
   #  flash[:failure] = "You must select an employee"
   #  redirect_to absence_search_add_path
   #else
    @absence = Absence.new

   #if @performed_render = false 
    @selected_employee = (params[:employee_id])
   if (params.has_key?(:employee_id)) #@performed_render = true
    @selected_employee = (params[:employee_id])
    # if (params[:absence][:user_id]) != nil
   elsif (params.has_key?(:absence))
    @selected_employee = (params[:absence][:user_id])
     #else
     
   #redirect_to root_path
   #flash[:failure] = "An error occurred"
  end
   # end
  end

   def create
    #@current_emp = params[:employee_id]
    
   
    @absence = Absence.new(params[:absence])
    if 
      @absence.save
      flash[:success] = "Record added!" 
      redirect_to root_path
    elsif  @absence.user_id == nil# !defined?(@absence.user_id)#@current_emp)# == nil
 render 'absences/new'
     # redirect_to absence_search_add_path
     # flash[:failure] = "Please select an employee"
     
   else
      render 'absences/new'
    end
  end


  
  def display

    if params[:q] == nil
      redirect_to absencesearchview_path
      flash[:failure] = "You must select a user"
    else
   @user = User.find_by_id(params[:q])
   #@current_emp = params[:q]
    @absences = @user.absences.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
end
    
  end


  def fill_absence
   # @user = User.find(1)
    @absences = Absence.all
    @unfilled_absence = []
    #@future = 
    @absences.each do |f|
    if f.date.future? && f.tempuser == nil || 0
      @unfilled_absence << f
    end
    end

#@f.each do |f|
#  if f.tempuser == @user.id
#end
#  end


#  @user = User.find_by_id(1)
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
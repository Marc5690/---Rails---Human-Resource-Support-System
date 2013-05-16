class ProjectsController < ApplicationController
  include ProjectsHelper
  before_filter :signed_in_user, only: [:create, :destroy]

  def new
    @project = Project.new
     @q = params[:q]
  end
 



 def addemp
@users = User.all
@tasks = Task.all


    @task = []

    @tasks.each do |f|
      @task << [f.title, f.id]
    end




#@available = []#@users.task_id.date_ended.past?

#for @users.each do |f|
#if f.task.date_ended.past?
#@available << f
#end
#@x = params[:x]
#@y = params[:y]
#@task = Task.all
#@user1 = User.all
#@user = User.find_by_id(@y)

#redirect_to root_path



################TAKE OUT LATER
#if @user.update_column(:task_id,@x)
################TAKE OUT LATER





#flash[:success] = "Success!"
#  else
#    flash[:failure] = "Failed!"
#  end

#@user.update_column(:task_id, @x)

end

def select_emp
  if params[:y] == nil
    flash[:failure] = "Please select a task"
    redirect_to projectforemp_path
  else



  

@task = Task.find_by_id(params[:y])
@skills = []
if @task.skills.any?
 @task.skills.all.each do |f|
@skills << f
end
end

@users = []
@task.users.all.each do |f|
@users << f
end


@user = User.all
@u = @user - @task.users
@employees = []
#@employees = []
#@employees = []

if @task.skills.exists?
@employees = []
  @u.each do |f|
    if f.skills.any?
     f.skills.each do |g|
    if @task.skills.include?(g) #&& f != nil
     # if f != nil
    # @employees = []
      @employees << f unless f.tasks.include?(@task)
      #f   #unless f.skills == nil#if f.tasks.each do |y| y.id != @task.id end
     # end
    elsif @task.skills.empty?
      @employees << f #if f.task_id != @task.id
    else
      @employees = nil
    end
   end
  end
  
  end

else
@user.each do |f|
  
      @employees << f unless f.tasks.include?(@task)#if f.task_id != @task.id 
 
end
end
end 

@available =[]
unless @employees == nil
  @employees.each do |f|
      @available << [f.name, f.id]
    end
else 
  @employees = nil
end

@d = params[:y].to_i
end



def update
@project = Project.find_by_id(params[:id])
# if @project.save 
#      redirect_to root_path
#      flash[:success] = "Project updated!"
#    else
#      render 'projects/choose_project_edit'
#    end

if @project.update_attributes(params[:project])
  flash[:success] = "Project Updated!"
  redirect_to root_path
else
   render 'projects/choose_project_edit'
 # flash[:failure] = "Project was not updated!"
 # redirect_to root_path
end

end

def projectstest2
@x = params[:x]
@y = params[:y]

@user = User.find_by_id(@y).update_attribute(:task_id, @x)
#User.find_by_id(user_id).update_attribute(:writer, true/false)
#@user.update_attribute
end

  def show


    @project = Project.find_by_id(params[:id])

 
 @projects_tasks_pagination = @project.tasks#.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
 
@EST = 0
if @project.tasks.any?
  @project_tasks = @project.tasks
   # @estimated_hours_TA = 
    @project_tasks.each do |f|
     # if f.tasks.any?
       # f.each. do |j|
      @EST += f.estimated_hours
    end
  end
#end

    #Gets the seconds between now and the start of the project, then converts the seconds to days. How many days have passed.
    @days_passed = ((((Time.now - @project.date_started)/60)/60)/24)

    


    #The total number of days it should take to finish the project
@total_days = ((((@project.date_ended - @project.date_started)/60)/60)/24)

    #Percentage of time passed for a project
    @percentage_of_time_passed=((((Date.today - @project.date_started.to_date).to_f)/((@project.date_ended.to_date - @project.date_started.to_date).to_f))*100)


@project_hours_worked = 0
 @project.time_and_attendances.each do |f| 
@project_hours_worked += f.hours_worked

end
 #Percentage of work done
  @work_percentage = ((@project_hours_worked.to_f/@EST.to_f)*100)

#  @work_percentage = ((@project_hours_worked.to_f/@project.estimated_hours.to_f)*100)#*100#
      end

  def editproject2
  end

  def task
@task = Task.new

  end

   def choose_task
@task_all = Task.all
@task = []
@task_all.each do |task|
  @task << [task.title, task.id]
end

  end


def display
  @project = Project.all
end


  def test
@task1 = Task.find_by_id(1)
    @task = Task.all#find_by_id(3)
@user = User.all
    @project1 = Project.find_by_id(3)
    @project = Project.all# = Project.all(:select => "id")#.each#time_and_attendances
   # @axe = Project.each#.time_and_attendances.all
    #current_user.private_messages.all
    @g = 0
    @p = @project.each do |f|
      f.time_and_attendances.each do |p|
      @g += p.hours_worked.to_i
    end
    
    end


#@x = @p.each do |f|
#f.time_and_attendances
#end
 #@q = @p.each do |f| 
      #f.id
#f.hours_worked
 #   end


#@time selects time and attendance records that have a corresponding project_id
#In this method, @p selects all projects
@time = TimeAndAttendance.all(:select => "project_id").each {|x| x.project_id == @p}
@a = TimeAndAttendance.all

#@py = TimeAndAttendance.where("id = 1")
@t = @a.each do |f|
  f.hours_worked
end
#@time2 = @time.each do |f|f    end
#.find_by_project_id(1)


  end

  def index
  end

  def choose_project
    @project = Project.all
    @array = []

    @project.each do |f|
      @array << [f.title, f.id]
    end
  end

  def choose_project_edit
    @project = Project.find_by_id(params[:q])


  end

  def neweditproject
  end

  def create
   @project = Project.new(params[:project])
    if @project.save
      flash[:success] = "Project created!"
       redirect_to root_path
       else
     # flash[:failure] = "Project could not be created!"
     # redirect_to root_path
     render 'projects/new'
    end
  end

  def add_user_to_task
     # if params[:user_id] == nil
     # @task_id = params[:d]#task
      @task = Task.find_by_id(params[:d])
      @user = User.find_by_id(params[:x])

       #if 

    


    @task.users << @user

       #).save#@user.update_column(:task_id,@task_id)
       flash[:success] = "Successfully assigned user!"
        redirect_to root_path
       #else
       # flash[:failure] = "Could not assign user to task"
       # render'projects/select_emp'
       #end
  end

  def addtask
    @task = Task.new
  end

  def skill
    @skill = Skill.new
  end

  def task_by_month
    if params[:date] == nil || params[:x] == nil
      redirect_to projectsplanning_path
flash[:failure] = "Please select an option."
    else
    @task = params[:x]
    @year = params[:date].fetch("year").to_i#params[:y].to_i
    @month = params[:date].fetch("month").to_i#params[:z].to_i# DateTime.new(:month = params[:z])
    @task = Task.find_by_id(@task)
    @array = []
    @array2 = []#Original values
    @array3 = []

    #@task.time_and_attendances.each do |f|
    
    #@days = []
    @day = days_in_month(@month, @year)

    @day1 = (1..@day)
    @days = []
    
    @day1.each do |f|
      @days << f#.to_s
    end

    @empty_data = []
    @days.each do |f|
    @empty_data << 0

    end


    @hours = @task.time_and_attendances.select('date, sum(hours_worked) as total_hours_worked').group('date(date)')
 

 ###############################################################
#   @hours.each do |f|
#    if f.date.month == @month && if f.date.year == @year
#      @array3 << f.total_hours_worked.to_i
#     else
#      @array2 << f
#   end
# else @array2 << f
# end
#end


#@hours.each do |f|
#  @empty_data[f.date.day.to_i - 1] = f.total_hours_worked
#end   
###################################################################

   @hours.each do |f|
    if f.date.month == @month && if f.date.year == @year
     @array3 << f
     else
      @array2 << f
   end
 else @array2 << f
 end
end


@array3.each do |f|
  @empty_data[f.date.day.to_i - 1] = f.total_hours_worked
end   

#@array3.each do |f|
#@array << f.total_hours_worked
#  end
#end





@a = @task.time_and_attendances.all

#st = ActiveRecord::Base.connection.raw_connection.prepare("update table set f1=? where f2=? and f3=?")
#st.execute(f1, f2, f3)
#st.close

#.find(:all, :conditions = ["title LIKE :search AND status = :status", {:search => "%my%", :status = "10"}, :select => "*, substring(title, 1, 10) AS title_sub", :order => "id DESC")


    #.all(#:conditions => "user_id = "+ @user.id.to_s,
                  #:select => "hours_worked", 
                  #:group => "date")
                  #:order => 'created_at DESC')

    #Model.sum(:column_name, :group => 'MONTH("created_at")')


     #if f.date.year == 2010 #&& 
    # if f.date.mon==8#@month#mon==8
     


     # @array2.each do |g|
     # if g.date. == f.date
     #@array3 << f

    #else

      #@array2 << f
    #end
  #end

  #  @array2.each do |f|
      ##if @array3.includes?
    


   # end
#@array = @array2 + @array3



     # @array << f.hours_worked
      #end
     # @array.sort_by{f.date}

    #end
    #end
   end
  end

  #@array.sort_by{|f| f}#time_and_attendance.date}
  def select_task_by_month
    @tasks_all = Task.all
    @tasks_for_menu = []
    @tasks_all.each do |f|

    @tasks_for_menu << [f.title, f.id]#params[:x]
    end
    
    @year = params[:y]
    @month = params[:z]
  end


def project_by_month
    if params[:date] == nil || params[:x] == nil
      redirect_to projectsplanning_path
flash[:failure] = "Please select an option."
    else
    @year = params[:date].fetch("year").to_i
    @month = params[:date].fetch("month").to_i
    @task = Project.find_by_id(params[:x])
    @array = []
    @array2 = []
    @array3 = []

  
    @day = days_in_month(@month, @year)

    @day1 = (1..@day)
    @days = []
    
    @day1.each do |f|
      @days << f#.to_s
    end

    @empty_data = []
    @days.each do |f|
    @empty_data << 0

    end


    @hours = @task.time_and_attendances.select('date, sum(hours_worked) as total_hours_worked').group('date(date)')
 



   @hours.each do |f|
    if f.date.month == @month && if f.date.year == @year
     @array3 << f
     else
      @array2 << f
   end
 else @array2 << f
 end
end


@array3.each do |f|
  @empty_data[f.date.day.to_i - 1] = f.total_hours_worked
end   







@a = @task.time_and_attendances.all


end
    
  
  end

  def select_project_by_month
    @tasks_all = Project.all
    @tasks_for_menu = []
    @tasks_all.each do |f|

    @tasks_for_menu << [f.title, f.id]
    end
    
    @year = params[:y]
    @month = params[:z]
  end



def task_by_year
  if params[:date] == nil || params[:x] == nil
      redirect_to projectsplanning_path
flash[:failure] = "Please select an option."
    else
    #@task = params[:x]
    @year = params[:date].fetch("year").to_i#params[:y].to_i
   # @month = params[:date].fetch("month").to_i#params[:z].to_i# DateTime.new(:month = params[:z])
    @task = Task.find_by_id(params[:x])
    @array = []
    @array2 = []#Original values
    @array3 = []


    #@day = days_in_month(@month, @year)
@days = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
   # @day1 = (1..@day)
   # @days = []
    
   # @day1.each do |f|
   #   @days << f#.to_s
   # end

    @empty_data = []
    @days.each do |f|
    @empty_data << 0

    end


    @hours = @task.time_and_attendances.select('date, sum(hours_worked) as total_hours_worked').group('date(date)')
 



#if f.date.month == @month &&

   @hours.each do |f|
     if f.date.year == @year
     @array3 << f
     else
      @array2 << f
   #end
 #else @array2 << f
 end
end


@array3.each do |f|
  @empty_data[f.date.month.to_i - 1] += f.total_hours_worked
end   






@a = @task.time_and_attendances.all
end
end

  def select_task_by_year
    @tasks_all = Task.all
    @tasks_for_menu = []
    @tasks_all.each do |f|

    @tasks_for_menu << [f.title, f.id]#params[:x]
    end
    
    @year = params[:y]
    
  end
  

  def select_task_by_month
    @tasks_all = Task.all
    @tasks_for_menu = []
    @tasks_all.each do |f|

    @tasks_for_menu << [f.title, f.id]#params[:x]
    end
    
    @year = params[:y]
    @month = params[:z]
  end



def project_by_year
  if params[:date] == nil || params[:x] == nil
      redirect_to projectsplanning_path
flash[:failure] = "Please select an option."
    else
    #@task = params[:x]
    @year = params[:date].fetch("year").to_i#params[:y].to_i
   # @month = params[:date].fetch("month").to_i#params[:z].to_i# DateTime.new(:month = params[:z])
    @task = Project.find_by_id(params[:x])
    @array = []
    @array2 = []#Original values
    @array3 = []


    #@day = days_in_month(@month, @year)
@days = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
   # @day1 = (1..@day)
   # @days = []
    
   # @day1.each do |f|
   #   @days << f#.to_s
   # end

    @empty_data = []
    @days.each do |f|
    @empty_data << 0

    end


    @hours = @task.time_and_attendances.select('date, sum(hours_worked) as total_hours_worked').group('date(date)')
 



#if f.date.month == @month &&

   @hours.each do |f|
     if f.date.year == @year
     @array3 << f
     else
      @array2 << f
   #end
 #else @array2 << f
 end
end

#Place total hours worked in the corresponding month position in the @empty_data array
@array3.each do |f|
  @empty_data[f.date.month.to_i - 1] += f.total_hours_worked
end   






@a = @task.time_and_attendances.all
end

end
  def select_project_by_year
    @tasks_all = Project.all
    @tasks_for_menu = []
    @tasks_all.each do |f|

    @tasks_for_menu << [f.title, f.id]#params[:x]
    end
    
    @year = params[:y]
    
  end
  



end
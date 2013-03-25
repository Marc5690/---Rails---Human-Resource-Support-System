class ProjectsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def new
    @project = Project.new
     @q = params[:q]
  end
 
 def choose_project
@task = Task.all 
@user = User.all

#@x = params[:x]#user
#@y = params[:y]#task

 end


 def addemp
@users = User.all

@available = []#@users.task_id.date_ended.past?

#for @users.each do |f|
#if f.task.date_ended.past?
#@available << f
#end
@x = params[:x]
@y = params[:y]
@task = Task.all
@user1 = User.all
@user = User.find_by_id(@y)

redirect_to root_path



################TAKE OUT LATER
if @user.update_column(:task_id,@x)
################TAKE OUT LATER





flash[:success] = "Success!"
  else
    flash[:failure] = "Failed!"
  end

#@user.update_column(:task_id, @x)

end

def projectsupdate
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
    @today = ((((Time.now - @project.date_started)/60)/60)/24)
    @fraction =((((Date.today - @project.date_started.to_date).to_f)/((@project.date_ended.to_date - @project.date_started.to_date).to_f))*100)
#@work = Project.time_and_attendances.all
@b = 0
 @project.time_and_attendances.each do |f| 
@b += f.hours_worked

end

  @tt = (@b.to_f/@project.estimated_hours.to_f)#*100#
      end

  def editproject2
  end

  def task
@task = Task.new

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

@py = TimeAndAttendance.where("id = 1")
@t = @a.each do |f|
  f.hours_worked
end
#@time2 = @time.each do |f|f    end
#.find_by_project_id(1)


  end

  def index
  end

  def neweditproject
  end

  def create
   @project = Project.new(params[:project])
    if @project.save
      flash[:success] = "Project created!"
       redirect_to root_path
       else
      render 'new'
    end
  end

  def addtask
    @task = Task.new
  end

  def skill
    @skill = Skill.new
  end

  def month
    @task = params[:x]
    @year = params[:y]
    @month = params[:z].to_i# DateTime.new(:month = params[:z])
    @task = Task.find_by_id(@task)
    @array = []
    @array2 = []#Original values
    @array3 = []

    #@task.time_and_attendances.each do |f|
    
    @hours = @task.time_and_attendances.select('date, sum(hours_worked) as total_hours_worked').group('date(date)')
 
 @hours.each do |f|
   if f.date.month == @month
    @array3 << f.total_hours_worked.to_i
  else
    @array2 << f
end

#@array3.each do |f|
#@array << f.total_hours_worked
#  end
end



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
   #end
  end

  #@array.sort_by{|f| f}#time_and_attendance.date}
  def select_project
    @task = params[:x]
    @year = params[:y]
    @month = params[:z]
  end

end
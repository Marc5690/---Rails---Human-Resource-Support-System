class StaticPagesController < ApplicationController
require 'will_paginate/array'
	skip_before_filter :require_login


  def home
 #   @projects_all = Project.all
# @danger = []
# @p = []
#@e = []
#@h = []
#@time = []

#  @estimate = 0
#  @hours = 0
# @projects_all.each do |f|
 #  @days_passed = ((((Time.now - f.date_started)/60)/60)/24)
 #  @total_days = ((((f.date_ended - f.date_started)/60)/60)/24)


#    @percentage_of_time_passed=((((Date.today - f.date_started.to_date).to_f)/((f.date_ended.to_date - f.date_started.to_date).to_f))*100)
 





#f.time_and_attendances.each do |hours|
#  @hours += hours.hours_worked
#end

#f.tasks.each do |est|
#  @estimate += est.estimated_hours
#end

#unless @hours == 0 || @estimate == 0

# @work_percentage = ((@hours.to_i/@estimate.to_i)*100)#*100#
#end

# if @percentage_of_time_passed.to_i > @work_percentage.to_i
 # @danger << f
 # @time << @percentage_of_time_passed
 # @p << @work_percentage
 # @e << @estimate
 # @h << @hours
 #end
#@project_hours_worked = 0
# @project.time_and_attendances.each do |f| 
#@project_hours_worked += f.hours_worked

#end


#end

#if @hours > 
#end
   #@project
    #@projects_all#.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
















@danger = []

@projects_all = Project.all

@projects_all.each do |project|

    @EST = 0
if project.tasks.any?
  @project_tasks = project.tasks
   # @estimated_hours_TA = 
    @project_tasks.each do |f|
     # if f.tasks.any?
       # f.each. do |j|
      @EST += f.estimated_hours
    end
  end
#end

    #Gets the seconds between now and the start of the project, then converts the seconds to days. How many days have passed.
    @days_passed = ((((Time.now - project.date_started)/60)/60)/24)

    


    #The total number of days it should take to finish the project
@total_days = ((((project.date_ended - project.date_started)/60)/60)/24)

    #Percentage of time passed for a project
    @percentage_of_time_passed=((((Date.today - project.date_started.to_date).to_f)/((project.date_ended.to_date - project.date_started.to_date).to_f))*100)


@project_hours_worked = 0
 project.time_and_attendances.each do |f| 
@project_hours_worked += f.hours_worked

end
 #Percentage of work done
  @work_percentage = ((@project_hours_worked.to_f/@EST.to_f)*100)


  if @percentage_of_time_passed > @work_percentage

    @danger << project
end
end











@notice = Noticeboard.new

@user = User.new

end

  def help
  	
  end

  def about
    
  end

  def menu

  end
  
end

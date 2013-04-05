module ProjectsHelper

Normal_Days_In_Month = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  #COMMON_YEAR_DAYS_IN_MONTH = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

def days_in_month(month, year )#= Time.now.year)
   return 29 if month == 2 && Date.gregorian_leap?(year)
   Normal_Days_In_Month[month]
end
  

  def project_alerts(project)
  	@project = project

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

  @work_percentage = ((@project_hours_worked.to_f/@project.estimated_hours.to_f)*100)#*100#




if @percentage_of_time_passed > @work_percentage
	return true
else 
	return false

end























  
  	
  end

end
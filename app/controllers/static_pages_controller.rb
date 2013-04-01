class StaticPagesController < ApplicationController

	skip_before_filter :require_login

  def home
  #     @project = Project.all
  #     @project.each do |f|
        
 #      end

   # @today = ((((Time.now - @project.date_started)/60)/60)/24)
   # @fraction =((((Date.today - @project.date_started.to_date).to_f)/((@project.date_ended.to_date - @project.date_started.to_date).to_f))*100)
#@work = Project.time_and_attendances.all

#@project_hours_worked = 0
# @project.time_and_attendances.each do |f| 
#@project_hours_worked += f.hours_worked
#end


end

  def help
  	
  end

  def about
    
  end

  def menu

  end
  
end

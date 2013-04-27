class TimeAndAttendance < ActiveRecord::Base

	attr_accessible :date, :hours_worked, :project_id, :user_id, :task_id, :company_id#,  :task_id

belongs_to :user
belongs_to :task
belongs_to :project
#:task, 

validates :date, :hours_worked, :task_id, presence: true  #Not valiating user id or project. User id will always                           
validates :date,  :uniqueness => {:scope => :user_id}#, :message => "User already has a Time and Attendance record for that date."            #exist and project is acquired in callback below 
validates_numericality_of :hours_worked, :only_integer => true, :message => "can only be whole number."
#validates_numericality_of :task_id, :only_integer => true, :message => "can only be whole number."
validates_inclusion_of :hours_worked, :in => 1..24, :message => "An employee cannot possibly have worked more than 24 hours and should not input records for days where they have worked less than an hour"

   default_scope { where(company_id: Company.current_id) }


  before_save do |timeandattendance| 
  	if timeandattendance.project_id == nil
        @task = Task.find_by_id(timeandattendance.task_id.to_i)
         @project = @task.project_id.to_i

         
         timeandattendance.project_id = @project
       end
        end
 #validates :project_id, presence: true


end

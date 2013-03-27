class TimeAndAttendance < ActiveRecord::Base

	attr_accessible :date, :hours_worked, :project_id, :task, :user_id, :task_id

belongs_to :user
belongs_to :task
belongs_to :project#, :through => :task #Polymorphic http://guides.rubyonrails.org/association_basics.html
#validate :validatedate? :date

  #private

  #def validatedate?
  #  if !mydate.is_a?(Date)
  #    errors.add(:mydate, 'must be a valid date') 
  #  end
  #end


validates :date, :hours_worked, :task, :user_id, :task_id, presence: true                               #:project_id,

#validates :date, format:

before_save do |timeandattendance| 
         @task = Task.find_by_id(timeandattendance.task_id.to_i)
         @project = @task.project_id.to_i
         timeandattendance.project_id = @project
       
        end
 #validates :project_id, presence: true


end

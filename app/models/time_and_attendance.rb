class TimeAndAttendance < ActiveRecord::Base

	attr_accessible :title, :date, :hours_worked, :project_id, :task, :user_id, :task_id

belongs_to :user
belongs_to :project
belongs_to :task

end

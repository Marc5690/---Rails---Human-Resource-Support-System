class Task < ActiveRecord::Base

	attr_accessible :title, :start_date, :end_date, :estimated_hours, :current_hours, :description, :percentage, :project_id

belongs_to :project
has_many :time_and_attendances, :foreign_key => "task_id"
has_many :users, :class_name => "User",:foreign_key => "task_id"
has_and_belongs_to_many :skills
end

class Project < ActiveRecord::Base
	attr_accessible :identification_number, :date_started, :date_ended, :title, :current_hours, :estimated_hours 
    has_many :tasks, :foreign_key => "project_id"
    has_many :time_and_attendances, :foreign_key => "project_id"
end

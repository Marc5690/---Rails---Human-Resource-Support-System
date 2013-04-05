class Task < ActiveRecord::Base

	attr_accessible :title, :start_date, :end_date, :estimated_hours, :current_hours, :description, :percentage, :project_id, :company_id

belongs_to :project
has_many :time_and_attendances, :foreign_key => "task_id"
has_many :users, :class_name => "User",:foreign_key => "task_id"
has_and_belongs_to_many :skills

   default_scope { where(company_id: Company.current_id) }

validates :title, :start_date, :end_date, :estimated_hours, :description, :project_id, presence: true  #Not valiating user id or project. User id will always                           
validates_numericality_of :estimated_hours, :project_id, :only_integer => true, :message => "can only be whole number."
#validates_inclusion_of :hours_worked, :in => 1..24, :message => "An employee cannot possibly have worked more than 24 hours and should not input records for days where they have worked less than an hour"

   validate :date_started_before_date_ended


    def date_started_before_date_ended
    	return unless start_date and end_date
  errors.add(:start_date, "must be before end time") unless start_date < end_date
  end 




end

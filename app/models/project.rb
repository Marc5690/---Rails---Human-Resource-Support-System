class Project < ActiveRecord::Base
	attr_accessible  :date_started, :date_ended, :title, :company_id, :estimated_hours # :current_hours
    has_many :tasks, :foreign_key => "project_id"
    has_many :time_and_attendances, :foreign_key => "project_id"
   default_scope { where(company_id: Company.current_id) }

   # validates :date, :uniqueness => {:scope => :user_id}
    validates :date_started, :date_ended, :title, :estimated_hours , presence: true 
   # validates_numericality_of :identification_number, :only_integer => true, :message => "can only be whole number."
    validate :date_started_before_date_ended


    def date_started_before_date_ended
    	return unless date_started and date_ended
  errors.add(:date_started, "must be before end time") unless date_started < date_ended
  end 



end

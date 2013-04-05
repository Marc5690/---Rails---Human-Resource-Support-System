class Absence < ActiveRecord::Base
	attr_accessible :date, :status, :reason, :form, :user_id, :tempuser, :company_id
    #default_scope where(:company_id => (current_user.company_id))
	belongs_to :user
	   default_scope { where(company_id: Company.current_id) }
    validates :date, :uniqueness => {:scope => :user_id}
    validates :date, :status, :reason, :form, :user_id, presence: true 
    validates_numericality_of :user_id, :only_integer => true, :message => "can only be whole number."
end

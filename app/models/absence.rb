class Absence < ActiveRecord::Base
	attr_accessible :date, :status, :reason, :form, :user_id, :tempuser
	belongs_to :user

    validates :date, :uniqueness => {:scope => :user_id}
    validates :date, :status, :reason, :form, :user_id, presence: true 
    validates_numericality_of :user_id, :only_integer => true, :message => "can only be whole number."
end

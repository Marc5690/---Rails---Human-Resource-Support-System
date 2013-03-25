class Absence < ActiveRecord::Base
	attr_accessible :date, :status, :reason, :form, :user_id
	belongs_to :user
end

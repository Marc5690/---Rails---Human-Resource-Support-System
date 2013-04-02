class Absence < ActiveRecord::Base
	attr_accessible :date, :status, :reason, :form, :user_id, :tempuser
	belongs_to :user

validates :date, :uniqueness => {:scope => :user_id}
    # validates_uniqueness_of :date, :scope => :user_id

   # before_save do |absence| 
   #     if absence.date.unique?
   #     end
   #     
  #      end
end

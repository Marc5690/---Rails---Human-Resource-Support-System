#include SessionsHelper

class PrivateMessage < ActiveRecord::Base

	attr_accessible :sender, :receiver, :title, :content, :date, :company_id#, :current_user

default_scope { where(company_id: Company.current_id) }
  


#has_and_belongs_to_many :users
has_many :users#receiver, :class_name => "User", :foreign_key => "receiver"
#has_one :sender, :class_name => "User", :foreign_key => "sender"
#has_one :user

validates :title, :content, presence: true


validates :title, length: { maximum: 20 }

validates :content, length: { maximum: 150 }



end

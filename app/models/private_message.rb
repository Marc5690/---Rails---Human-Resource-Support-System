class PrivateMessage < ActiveRecord::Base

	attr_accessible :sender, :receiver, :title, :content, :date

#has_and_belongs_to_many :user
has_many :users#receiver, :class_name => "User", :foreign_key => "receiver"
#has_one :sender, :class_name => "User", :foreign_key => "sender"
#has_one :user

end

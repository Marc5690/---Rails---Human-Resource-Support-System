class Skill < ActiveRecord::Base

attr_accessible :skill_type
	
	has_and_belongs_to_many :users, :join_table => :skills_users
	has_and_belongs_to_many :tasks, :join_table => :skills_tasks

	validates :skill_type, presence: true
	
end

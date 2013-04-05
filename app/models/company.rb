class Company < ActiveRecord::Base
	 attr_accessible :name, :subdomain
  
  def self.current_id=(id)
    Thread.current[:company_id] = id
  end
  
  def self.current_id
    Thread.current[:company_id]
  end

end

class Noticeboard < ActiveRecord::Base
	  default_scope { where(company_id: Company.current_id) }
	   attr_accessible :company_id, :content
end

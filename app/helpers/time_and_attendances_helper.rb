module TimeAndAttendancesHelper
  
  def temporary_positions?(user) 
  	if user.temporary_positions.any?
  		user.temporary_positions.each do |f|
  			if f.date == Date.today.day
  				return true
  			else 
  				return false
  			end
  		end
    end
   end

end
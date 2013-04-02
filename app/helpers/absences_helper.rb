module AbsencesHelper

  def temporary_positions?(user, absence)
    if user.temporary_positions.any?
      user.temporary_positions.each do |temp| 
        if temp.date == absence.date #Check to ensure that the user does not have any other temporary positions on that day
        return false
      else 
        return true
        end
      end
    end
    
  end
end
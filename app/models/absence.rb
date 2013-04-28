class Absence < ActiveRecord::Base
	attr_accessible :date, :date_ended, :status, :reason, :form, :user_id, :tempuser, :company_id
	belongs_to :user
	default_scope { where(company_id: Company.current_id) }
  validates :date, :uniqueness => {:scope => :user_id}
    
#validates_datetime


   # validates_datetime :date, :uniqueness => {:between => :date..:date_ended}
   # validates_datetime :date_ended, :uniqueness => {:between => :date..:date_ended}

   # validates :date, :exclusion => { :in => Absence.all{|r|
#[(r.date)..(r.date_ended)]}}#, :uniqueness => { :in => :date..:date_ended,
   # :message => "Date is reserved." },
     
  #validates :date..:date_ended, :uniqueness => {:scope => :overlaps}


 #validate :uniqueness_of_date_range

  #private
  #def uniqueness_of_date_range
  #  errors.add(:date, "is not available") unless Absence.where("? >= date AND ? <= date_ended",
  #                                                          date, date).count == 0
  #  errors.add(:date_ended, "is not available") unless Absence.where("? >= date AND ? <= date_ended",
  #                                                          date_ended, date_ended).count == 0
  #end


#validate :overlaps

 # scope :overlaps, ->(date, date_ended) do
 #   where "(DATEDIFF(date, ?) * DATEDIFF(?, date_ended)) >= 0", date_ended, date
 # end

  #def overlaps?
  #  overlaps.exists?
  #end

  #def overlaps
  #  siblings.overlaps date, date_ended
  #end



#validates :date, :uniqueness => {:scope => :overlaps}
  
  

 scope :overlaps, ->(date, date_ended) do                                        # datediff(now(), changetime)
    where "( (julianday(Date(date)) - julianday(?)))* ((julianday(Date(?)) - julianday(date_ended))  ) >= 0", date_ended, date#julianday('now') - julianday(changetime, 'unixepoch')
  end



 # scope :overlaps, ->(date, date_ended) do                                        
 #   where "(DATEDIFF(date, ?) * DATEDIFF(?, date_ended)) >= 0", date_ended, date
 # end

  def overlaps?
    overlaps.exists?
  end

  # Others are models to be compared with your current model
  # you can get these with a where for example
  def overlaps
    siblings.overlaps date, date_ended
  end

  validate :not_overlap 

  def not_overlap
    errors.add(:base, 'User already has an absence record that exists between those dates') if overlaps?
  end

  # -1 is when you have a nil id, so you will get all persisted user absences
  # I think -1 could be omitted, but did not work for me, as far as I remember
  def siblings
  	#user = absence.user
    user.absences.where('id != ?', id || -1)
  end




#named_scope :overlaps, ->(date, date_ended) do
#    where "(DATEDIFF(date, ?) * DATEDIFF(?, date_ended)) >= 0", date_ended, date
#  end

  #def overlaps?(others)
  #  overlaps(others).exists?
  #end

  #Others are models to be compared with your current model
 # you can get these with a where for example
  #def overlaps(others)
  #  others.overlaps date, date_ended
  #end

 # validates :not_overlap

 # def not_overlap
    # TODO is it possible to pass arguments to validation?
 #   others = # set records to be compared here
 #   errors.add(:key, 'message') if overlaps?(others)
 # end








    # :date..:date_ended
  #  @dates = :date..:date_ended
  #  validates :date..:date_ended :uniqueness  => { :scope => @dates,
  #  :message => "User is already absent on that date" }

 #   validates :date, :exclusion => { :in => %w(www us ca jp),
 #   :message => "Subdomain %{value} is reserved." }

#validates :field, :range => true

 #validates :duration, :range => { :not_overlapping => :meetings_in_same_room }

 #def duration
 #   :date..:date_ended
 # end


    validates :date, :date_ended, :status, :reason, :form, :user_id, presence: true 
    validates_numericality_of :user_id, :only_integer => true, :message => "can only be whole number."














#before_save :time_check

 #before_save do |absence| 
#@range = absence.date..absence.date_ended
#       Absence.all.each do |f|
#    		if @range.include?(f.date..f.date_ended)
  # if Absence.include?(:date..:date_ended)
      #reject
 #     return false
 #  else
 #     #accept!
 #     return true
 # end
#end
#        end

















#validates :uniqueness_of_date_range

       # private
 # def uniqueness_of_date_range :date, :date_ended
 #   errors.add(:date, "Already exists") unless Absence.where("? >= date AND ? <= date_ended",
 #                                                           date, date).count == 0

 #   errors.add(:date_ended, "Already exists") unless Absence.where("? >= date AND ? <= date_ended",
 #                                                           date_ended, date_ended).count == 0
 # end


















  #  def time_check
  #  	Absence.all.each do |f|
  #  		if (f.date..f.date_ended).include?(:date..:date_ended)
  # if Absence.include?(:date..:date_ended)
      #reject
#      return false
#   else
      #accept!
#      return true
#  end
#end
#end


end

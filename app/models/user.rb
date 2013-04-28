class User < ActiveRecord::Base
  attr_accessible :name, :email, :personnel_number, :address, 
  :telephone, :date_of_birth, :sex, :commencement, :termination, 
  :insurance, :grade, :centre, :post, :division, :location, 
  :salary_scale, :pay_center, :task, :admin, :password, :password_confirmation, :company_id


   validates_uniqueness_of :email, scope: :company_id

   default_scope { where(company_id: Company.current_id) }

  has_secure_password
  has_many :absences
  has_many :time_and_attendances
  has_many :received_messages, :class_name => "PrivateMessage", :foreign_key => "receiver"
  has_many :sent_messages, :class_name => "PrivateMessage", :foreign_key => "sender"
  has_many :temporary_positions, :class_name => "Absence", :foreign_key => "tempuser"
  #belongs_to :task  
  has_and_belongs_to_many :tasks
  
 # delegate :team, :to => :task

  has_and_belongs_to_many :skills

  before_save do |user| 
        user.email = email.downcase 
        user.remember_token = SecureRandom.urlsafe_base64
        end
validates_numericality_of :personnel_number, :only_integer => true, :message => "can only be whole number."


validates :personnel_number, :address, 
  :telephone, :sex,# :commencement, :termination, #:date_of_birth,
  :insurance, :grade, :centre, :post, :division, :location, 
  :salary_scale, :pay_center, presence: true

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end

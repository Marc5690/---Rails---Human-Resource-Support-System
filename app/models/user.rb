class User < ActiveRecord::Base
  attr_accessible :name, :email, :personnel_number, :address, 
  :telephone, :date_of_birth, :sex, :commencement, :termination, 
  :insurance, :grade, :centre, :post, :division, :location, 
  :salary_scale, :pay_center, :task_id, :admin, :password, :password_confirmation

  has_secure_password
  has_many :absences, dependent: :destroy
  has_many :time_and_attendances
  has_many :received_messages, :class_name => "private_messages", :foreign_key => "receiver"
  has_many :sent_messages, :class_name => "private_messages", :foreign_key => "sender"
  
  belongs_to :task
  has_and_belongs_to_many :skills

  before_save do |user| 
        user.email = email.downcase 
        user.remember_token = SecureRandom.urlsafe_base64
        end

validates :personnel_number, :address, 
  :telephone, :date_of_birth, :sex, :commencement, :termination, 
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

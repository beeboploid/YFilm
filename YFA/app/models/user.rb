class User < ActiveRecord::Base
  # before_save { self.email = email.downcase }

  # validates :name, presence: true, length: { maximum: 50 } #these are simply methods
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[yale]+\.[edu]+\z/i
  # validates :email, presence: true, 
  #           format: { with: VALID_EMAIL_REGEX }, 
  #           uniqueness: { case_sensitive: false }
  # has_secure_password
  # validates :password, length: { minimum: 6 }
 
  # Associations
  has_many :roles
  has_many :projects, through: :roles
  has_one :interest
  has_many :auditions
 
  # Validations
  validates_uniqueness_of :email, :message => "Conflicting email address."
 
    
  # Accessors 
  # def name
  #   self.fname.capitalize + " " + self.lname.capitalize
  # end
  
 
protected
 
  
end
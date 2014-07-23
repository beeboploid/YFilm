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
  mount_uploader :image, ImageUploader

  accepts_nested_attributes_for :interest
 
 
    
  # Accessors 
  
  
 

 
  
end
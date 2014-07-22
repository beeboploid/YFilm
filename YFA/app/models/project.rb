class Project < ActiveRecord::Base
	has_many :roles
	has_many :users, through: :roles
	has_many :auditions
	mount_uploader :image, ImageUploader

end

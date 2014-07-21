class Project < ActiveRecord::Base
	has_many :roles
	has_many :users, through: :roles
	mount_uploader :image, ImageUploader

end

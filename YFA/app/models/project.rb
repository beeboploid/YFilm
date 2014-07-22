class Project < ActiveRecord::Base
	

	scope :find_project, -> (lambda) { where("title like ?", "%#{lambda}%")}

	has_many :roles
	has_many :users, through: :roles
	has_many :auditions
	mount_uploader :image, ImageUploader


end

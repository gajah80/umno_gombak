class Administration < ActiveRecord::Base
	has_secure_password
	belongs_to :cawangan

	validates_uniqueness_of :username, :email
	validates_presence_of :username, :password, :email, :role
end

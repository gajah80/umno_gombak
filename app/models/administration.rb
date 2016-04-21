class Administration < ActiveRecord::Base
	has_secure_password
	has_and_belongs_to_many :cawangans

	validates_uniqueness_of :username, :email
	validates_presence_of :username, :password, :email, :role
end

class User < ApplicationRecord
	#Validations
	validates_presence_of :name, :email, :password_digest
    validates :email, uniqueness: true
 
    #encrypt password
    has_secure_password

    #db relations
    has_many :pets
    has_many :routes
end
